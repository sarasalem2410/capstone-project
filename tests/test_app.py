from flask.wrappers import Response


def test_home(app, client):
    response = client.get('/')
    assert response.status_code == 200
    assert response.data == b'hellooooooo'