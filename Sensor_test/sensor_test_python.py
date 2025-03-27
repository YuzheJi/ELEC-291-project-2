import serial
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from collections import deque

# === CONFIGURATION ===
SERIAL_PORT = 'COM6'   # Change to your actual port
BAUD_RATE = 115200
MAX_POINTS = 200       # Max number of points on plot

# === SETUP ===
ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1)
x_data = deque(maxlen=MAX_POINTS)
y_data = deque(maxlen=MAX_POINTS)
angle_data = deque(maxlen=MAX_POINTS)
t_data = deque(maxlen=MAX_POINTS)
t = 0

# === INIT PLOT ===
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 6), sharex=True)

# --- X and Y plot ---
line1, = ax1.plot([], [], label="X")
line2, = ax1.plot([], [], label="Y")
ax1.set_ylim(-100, 100)
ax1.set_ylabel("Magnetometer Reading")
ax1.set_title("X, Y and Angle vs Time")
ax1.legend()
ax1.grid(True)

# --- Angle plot ---
line3, = ax2.plot([], [], label="Angle", color='orange')
ax2.set_ylim(-360, 360)
ax2.set_xlabel("Time (frames)")
ax2.set_ylabel("Angle (°)")
ax2.legend()
ax2.grid(True)

# --- Angle display text ---
angle_text = ax2.text(0.02, 0.95, '', transform=ax2.transAxes, fontsize=12,
                      verticalalignment='top', bbox=dict(boxstyle='round', facecolor='wheat', alpha=0.5))

# === UPDATE FUNCTION ===
def update(frame):
    global t
    try:
        line = ser.readline().decode('utf-8').strip()
        if ',' in line:
            parts = line.split(',')
            if len(parts) == 3:
                x = int(parts[0])
                y = int(parts[1])
                angle = float(parts[2])
                x_data.append(x)
                y_data.append(y)
                angle_data.append(angle)
                t_data.append(t)
                t += 1

                line1.set_data(t_data, x_data)
                line2.set_data(t_data, y_data)
                line3.set_data(t_data, angle_data)

                angle_text.set_text(f"Current angle: {angle:.2f}°")


                ax1.set_xlim(max(0, t - MAX_POINTS), t)
                ax2.set_xlim(max(0, t - MAX_POINTS), t)
    except:
        pass  # Skip malformed lines

    return line1, line2, line3, angle_text

# === RUN LIVE PLOT ===
ani = animation.FuncAnimation(fig, update, interval=50)
plt.tight_layout()
plt.show()
