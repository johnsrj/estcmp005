from threading import Thread
from time import sleep
import sys

class MiniThread(Thread):
    def __init__(self, m):
        self.n = m
    
    def run(self):
        while self.n > 0:
            self.n -= 1
            sleep(0)

threads = int(sys.argv[1])
times = int(sys.argv[2])
for i in range(threads):
	t = MiniThread(times)
	t.run()