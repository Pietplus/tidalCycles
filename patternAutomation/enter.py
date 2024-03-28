import pyautogui

# Function to simulate pressing Cmd+Enter
def press_cmd_enter():
    pyautogui.hotkey('command', 'enter')

# Read the text file
file_path = 'automatic.tidal'  # Specify the path to your text file
with open(file_path, 'r') as file:
    lines = file.readlines()

# Search for lines containing the pattern "midichannel" and simulate Cmd+Enter
for line in lines:
    if 'midichannel' in line:
        print("Found line:", line.strip())
        press_cmd_enter()

