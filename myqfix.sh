#This file fixes connectivity problems with the MyQ Integration within HomeAssistant until an Integration Fix is implemented
# Access to the homeassistant docker container ( docker exec -it homeassistant bash )is required in order to copy the file to the location note below.
#request.py.modified fixes line 34 where self._useragent = None is corrected to self._useragent = str("anytexthere")
# The following command copies the *.modified file with its change on line 34 to overwite the destination request.py file.
#This file and the *.modified file can be copied to the Home Assistant /config directory first, then executed within the docker container
# Restart HomeAssistant after the copy.
#Until a proper fix is implemented in the Home Assistant docker image, the file will have to be recopied each time Home Assistant is updated.
cp request.py.modified /usr/local/lib/python3.11/site-packages/pymyq/request.py
