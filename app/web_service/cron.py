import requests


def test_job():
    print("Test job called")
    res = requests.get('http://144.91.83.54/TestCron/')
