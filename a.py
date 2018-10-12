import argparse

if __name__ == '__main__':

    from python_terraform import *
    tf = Terraform(working_dir='/Users/jmehler/Documents/ex')
    tf.plan(no_color=IsFlagged, refresh=False, capture_output=True)
    approve = {"auto-approve": True}
    print(tf.plan())
    print(tf.apply(**approve))