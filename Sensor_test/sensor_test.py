import serial
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from collections import deque

# === CONFIGURATION ===
SERIAL_PORT = 'COM6'   # Change this to your actual port
BAUD_RATE = 115200
MAX_POINTS = 200       # Max number of points to show on plot

# === SETUP ===
ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1)
x_data = deque(maxlen=MAX_POINTS)
y_data = deque(maxlen=MAX_POINTS)
t_data = deque(maxlen=MAX_POINTS)
t = 0

# === INIT PLOT ===
fig, ax = plt.subplots()
line1, = ax.plot([], [], label="X")
line2, = ax.plot([], [], label="Y")
ax.set_ylim(-100, 100)  # Adjust as needed
ax.set_xlim(0, MAX_POINTS)
ax.legend()
ax.set_title("X and Y vs Time")
ax.set_xlabel("Time (frames)")
ax.set_ylabel("Magnetometer Reading")

def update(frame):
    global t
    try:
        line = ser.readline().decode('utf-8').strip()
        if ',' in line:
            x_str, y_str = line.split(',')
            x = int(x_str)
            y = int(y_str)
            x_data.append(x)
            y_data.append(y)
            t_data.append(t)
            t += 1

            line1.set_data(t_data, x_data)
            line2.set_data(t_data, y_data)
            ax.set_xlim(max(0, t - MAX_POINTS), t)
    except:
        pass  # Skip bad lines

    return line1, line2

ani = animation.FuncAnimation(fig, update, interval=50)
plt.tight_layout()
plt.show()
