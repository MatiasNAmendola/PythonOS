print ('Starting TechnologyFlynn VirtualPC..')
print ('Searching For OS..')
print ('OS Found: PythonOS Release Candidate')
print ('Loading OS..')
print ('Giving Control To OS..')
print ('Done!')
import pyoscore
import pyoscommands
import os
print('Welcome To PythonOS')
print("PythonOS is licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.")
print('Powered By The PYOS Core Framework Version 1.0')
if pyoscore.datai('setupstatus.dat') == '0':
    accountdata = {'username' : 'username', 'password' : 'password'}
    print ('PythonOS Setup Wizard')
    newusrname = input ('Username: ')
    newpass = input ('Password: ')
    accountdata['username'] = newusrname
    accountdata['password'] = newpass
    pyoscore.datao('usrdata.dat', accountdata)
    pyoscore.datao('setupstatus.dat', '1')
    print ('Setup Complete!')
    print ('Please Reboot PythonOS To Finish Setup')
elif pyoscore.datai('setupstatus.dat') == '1':
    correctdata = (pyoscore.datai('usrdata.dat'))
    # Login Code
    usrname = input('Username: ')
    password = input('Password: ')
    if pyoscore.login(usrname, password, correctdata) == 'True':
        print ('-------------------------')
        print ('Welcome, ' + usrname + '!')
        command = input ('Command: ')
        pyoscommands.checkcommand(command)
    elif usrname == 'bios' and password == 'virtualpc':
        print ('------------------------------------------')
        print ('TechnologyFlynn VirtualPC BIOS V 1.1 Alpha')
        print ('------------------------------------------')
        print ('Options')
        print ('-------')
        print ('1: OS Details')
        print ('2: OS Config')
        print ('3: VirtualPC Details')
        print ('4: Shell')
        print ('0: Exit')
        bioscommand = str(input('Option #: '))
        if bioscommand == '1':
            print ('OS Details')
            print ('----------')
            print ('OS Name: PythonOS')
            print ('Version: 2.1 Release Candidate')
            print ('Scripting Language: Python 3.2, PYOSAPI 1.0')
            input ('Press Enter To Exit')
        elif bioscommand == '2':
            print ('OS Config')
            print ('---------')
            print ('1: Rerun Setup')
            print ('2: Rewrite Dat Files')
            print ('0: Exit')
            osconfigoption = str(input('Option #: '))
            if osconfigoption == '1':
                import pyosappapi
                vpbios = pyosappapi.pyosapp("TechnologyFlynn VirtualPC Bios", "TechnologyFlynn Innovations")
                vpbios.dataaction('w', 'setupstatus.dat', '0')
                print ('Restart VirtualPC To Complete This Action')
                input ('Press Enter To Exit')
            elif osconfigoption == '2':
                import pyosappapi
                vpbios = pyosappapi.pyosapp("TechnologyFlynn VirtualPC Bios", "TechnologyFlynn Innovations")
                filename = input ('File: ')
                data = input ('Data: ')
                vpbios.dataaction('w', filename, data)
            elif osconfigoption == '0':
                input('Press Enter To Exit')
        elif bioscommand == '3':
            print ('VirtualPC Details')
            print ('-----------------')
            print ('Version: 1.1 Alpha')
            print ('Version Type: Integrated')
            print ('Licence: OEM')
            print ('Licenced To: TechnologyFlynn Innovations LLC')
            input ('Press Enter To Exit')
        elif bioscommand == '4':
            print ('-----')
            print ('Shell')
            print ('-----')
            biosshellcommand = str(input('bios@tfvirtualpc :'))
            pyoscommands.checkcommand(biosshellcommand)
        elif bioscommand == '0':
            input ('Press Enter To Exit')
    else:
        print ('Login Failed')
        input ('Press Enter To Shutdown PythonOS')
