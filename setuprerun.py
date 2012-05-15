def run():
    import pyosappapi
    rerunsetup = pyosappapi.pyosapp("Rerun Setup Wizard", "TechnologyFlynn Innovations")
    print('Reboot PythonOS To Rerun The Setup Wizard')
    rerunsetup.dataaction('w', 'setupstatus.dat', '0')
    input('Press Enter To Shutdown PythonOS')
