def run():
    import pyoscore
    print('Welcome To PyNote(Python Notebook)')
    action = input('Action(Read or Write): ')
    if action == 'Read' or 'read':
        filename = str(input())
