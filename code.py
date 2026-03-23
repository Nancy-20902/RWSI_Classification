try:
    import matplotlib.pyplot as plt
except ModuleNotFoundError:
    import sys
    import subprocess
    subprocess.check_call([sys.executable, '-m', 'pip', 'install', 'matplotlib'])
    import matplotlib.pyplot as plt

# rest of the original code follows here