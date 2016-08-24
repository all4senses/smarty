#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=avr-gcc
CCC=avr-g++
CXX=avr-g++
FC=gfortran
AS=avr-as

# Macros
CND_PLATFORM=Arduino_1.0.5-Windows
CND_DLIB_EXT=dll
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/b54ff340/myGBoard_25.o \
	${OBJECTDIR}/_ext/b54ff341/myGBoard_26.o \
	${OBJECTDIR}/_ext/8db27011/myMEGA_29.o \
	${OBJECTDIR}/_ext/1afddbcf/myUNO_25.o \
	${OBJECTDIR}/_ext/1afddbd0/myUNO_26.o \
	${OBJECTDIR}/_ext/1afddbd1/myUNO_27.o \
	${OBJECTDIR}/_ext/1afddbd2/myUNO_28.o \
	${OBJECTDIR}/_ext/70ae97d9/DS3231.o \
	${OBJECTDIR}/_ext/511d6b5/DS3231_TEST.o \
	${OBJECTDIR}/_ext/7c6f0e8/LiquidCrystal_I2C.o \
	${OBJECTDIR}/_ext/21c918cd/CustomChars.o \
	${OBJECTDIR}/_ext/3c91c7df/HelloWorld.o \
	${OBJECTDIR}/_ext/55a73432/HelloWorld1.o \
	${OBJECTDIR}/_ext/e0e821cf/SerialDisplay.o \
	${OBJECTDIR}/_ext/990809c9/BlinkWithoutDelay_my_linple_1.o \
	${OBJECTDIR}/_ext/55b50f49/Blink_my_test_11.o \
	${OBJECTDIR}/_ext/10b83e6b/EasyTransfer_RX_Example_my_11.o \
	${OBJECTDIR}/_ext/f544634/EasyTransfer_RX_Example_my_21_gboard.o \
	${OBJECTDIR}/_ext/4d1ab8e7/EasyVRBridge_my_11.o \
	${OBJECTDIR}/_ext/aa09f0ab/EtherShield_DNSTest_theOnlyWorking_11.o \
	${OBJECTDIR}/_ext/9ef0bc7c/GSM_GPRSLibrary_Call_my1.o \
	${OBJECTDIR}/_ext/720dd747/GSM_GPRSLibrary_SMS_my1.o \
	${OBJECTDIR}/_ext/25f5d455/GSM_GPRSLibrary_SMS_my_11.o \
	${OBJECTDIR}/_ext/645448b8/IRrecord_my_21_simple.o \
	${OBJECTDIR}/_ext/6ac76694/IRrecord_my_31_with_ElectroSensor.o \
	${OBJECTDIR}/_ext/52693cf3/IRrecord_my_32_with_ElectroSensor.o \
	${OBJECTDIR}/_ext/3a0b1352/IRrecord_my_33_with_ElectroSensor.o \
	${OBJECTDIR}/_ext/21ace9b1/IRrecord_my_34_with_ElectroSensor.o \
	${OBJECTDIR}/_ext/9d657750/IRrecvDemo_1.o \
	${OBJECTDIR}/_ext/f4972e1/IRrecvDemo_11.o \
	${OBJECTDIR}/_ext/7763af9/Scroll.o \
	${OBJECTDIR}/_ext/2dc87b30/TestEasyVR_my_11.o \
	${OBJECTDIR}/_ext/2dc87b4f/TestEasyVR_my_21.o \
	${OBJECTDIR}/_ext/5a355233/_______.o \
	${OBJECTDIR}/_ext/697c70f5/analog_write_n_read_11.o \
	${OBJECTDIR}/_ext/722ec536/analog_write_rgb_led.o \
	${OBJECTDIR}/_ext/668ed198/blink_L_n_led.o \
	${OBJECTDIR}/_ext/f45b0383/buttons_n_leds.o \
	${OBJECTDIR}/_ext/8ead8a25/ehternet_led_works_11.o \
	${OBJECTDIR}/_ext/99cdb2c1/eternet_led.o \
	${OBJECTDIR}/_ext/46537692/ir_rec_n_send.o \
	${OBJECTDIR}/_ext/66b5f2f4/my5100_WebClient.o \
	${OBJECTDIR}/_ext/81a52e6c/my5100_WebServer.o \
	${OBJECTDIR}/_ext/ad134f1f/my5100_WebServer_2.o \
	${OBJECTDIR}/_ext/ff3ae18e/my5100_WebServer_withCurrentSensor_3.o \
	${OBJECTDIR}/_ext/f03a0fec/my5100_WebServer_with_EasyTransfer_11.o \
	${OBJECTDIR}/_ext/5a1dcac8/myGBoard_11.o \
	${OBJECTDIR}/_ext/5a1dcae7/myGBoard_21.o \
	${OBJECTDIR}/_ext/5a1dcaea/myGBoard_24.o \
	${OBJECTDIR}/_ext/82020e61/myMEGA_27.o \
	${OBJECTDIR}/_ext/64d83655/myMEGA_11.o \
	${OBJECTDIR}/_ext/64d83675/myMEGA_22.o \
	${OBJECTDIR}/_ext/64d83676/myMEGA_23.o \
	${OBJECTDIR}/_ext/64d83677/myMEGA_24.o \
	${OBJECTDIR}/_ext/64d83678/myMEGA_25.o \
	${OBJECTDIR}/_ext/64d83679/myMEGA_26.o \
	${OBJECTDIR}/_ext/64d8367b/myMEGA_28.o \
	${OBJECTDIR}/_ext/e8201be1/myUNO_11.o \
	${OBJECTDIR}/_ext/e8201c00/myUNO_21.o \
	${OBJECTDIR}/_ext/e8201c03/myUNO_24.o \
	${OBJECTDIR}/_ext/a0709e24/myUltrasound_11.o \
	${OBJECTDIR}/_ext/a0709e25/myUltrasound_12.o \
	${OBJECTDIR}/_ext/a0709e26/myUltrasound_13.o \
	${OBJECTDIR}/_ext/8991f434/my_AT24C32_TEST_11.o \
	${OBJECTDIR}/_ext/a25293da/my_EasyVR_11.o \
	${OBJECTDIR}/_ext/5b4b17e0/my_ElectroSensor_11.o \
	${OBJECTDIR}/_ext/f7bd962c/my_GSM_Shield_Test_ext1.o \
	${OBJECTDIR}/_ext/34e6dffc/my_SensorNode_11.o \
	${OBJECTDIR}/_ext/977382d/my_i2c_scanner_11.o \
	${OBJECTDIR}/_ext/9b088008/my_ir_send_11.o \
	${OBJECTDIR}/_ext/9989f973/speaker.o \
	${OBJECTDIR}/_ext/fb62c230/ultrasound_n_relay.o \
	${OBJECTDIR}/_ext/7c68ce78/EEPROM.o \
	${OBJECTDIR}/_ext/5bdbf4fd/eeprom_clear.o \
	${OBJECTDIR}/_ext/9fe484e6/eeprom_read.o \
	${OBJECTDIR}/_ext/5cf8968f/eeprom_write.o \
	${OBJECTDIR}/_ext/7fad736d/ETHER_28J60.o \
	${OBJECTDIR}/_ext/c30b700f/EchoParams.o \
	${OBJECTDIR}/_ext/fd9ad5e4/HelloWorld.o \
	${OBJECTDIR}/_ext/8cbcdd12/ServeReadings.o \
	${OBJECTDIR}/_ext/9317c036/WebRemote.o \
	${OBJECTDIR}/_ext/8f4b6795/EasyTransferI2C.o \
	${OBJECTDIR}/_ext/1ac29d37/EasyTransfer_RX_Example.o \
	${OBJECTDIR}/_ext/3557f75/EasyTransfer_TX_Example.o \
	${OBJECTDIR}/_ext/7e03dcd6/EasyVR.o \
	${OBJECTDIR}/_ext/7e03dcd6/EasyVRBridge.o \
	${OBJECTDIR}/_ext/12d28314/EasyVRBridge.o \
	${OBJECTDIR}/_ext/70e1c5d/TestEasyVR.o \
	${OBJECTDIR}/_ext/60ff2bdc/Esplora.o \
	${OBJECTDIR}/_ext/8bf757bc/EsploraAccelerometer.o \
	${OBJECTDIR}/_ext/da7713c9/EsploraBlink.o \
	${OBJECTDIR}/_ext/922ad036/EsploraJoystickMouse.o \
	${OBJECTDIR}/_ext/1dbaf0d5/EsploraLedShow.o \
	${OBJECTDIR}/_ext/99a329fd/EsploraLedShow2.o \
	${OBJECTDIR}/_ext/b0a1f5a4/EsploraLightCalibrator.o \
	${OBJECTDIR}/_ext/db165292/EsploraMusic.o \
	${OBJECTDIR}/_ext/58bc6056/EsploraSoundSensor.o \
	${OBJECTDIR}/_ext/f430473b/EsploraTemperatureSensor.o \
	${OBJECTDIR}/_ext/78b0b473/EsploraKart.o \
	${OBJECTDIR}/_ext/78b32e53/EsploraPong.o \
	${OBJECTDIR}/_ext/1b7d63e1/EsploraRemote.o \
	${OBJECTDIR}/_ext/9de470d3/EsploraTable.o \
	${OBJECTDIR}/_ext/493739b/EtherShield.o \
	${OBJECTDIR}/_ext/493739b/dhcp.o \
	${OBJECTDIR}/_ext/493739b/dnslkup.o \
	${OBJECTDIR}/_ext/493739b/enc28j60.o \
	${OBJECTDIR}/_ext/e9575e05/EtherShield_DHCPTest.o \
	${OBJECTDIR}/_ext/af8ecb19/EtherShield_DNSTest.o \
	${OBJECTDIR}/_ext/8f2114d/EtherShield_PachubeRGB.o \
	${OBJECTDIR}/_ext/f144e6b3/EtherShield_TFTPServer.o \
	${OBJECTDIR}/_ext/e1ff9f1f/EtherShield_broadcast.o \
	${OBJECTDIR}/_ext/da828a2a/EtherShield_readpachube.o \
	${OBJECTDIR}/_ext/9859135c/EtherShield_twitterclient.o \
	${OBJECTDIR}/_ext/3448e1f5/Ethershield_webserver.o \
	${OBJECTDIR}/_ext/3923b7bd/EtherShield_wolclient.o \
	${OBJECTDIR}/_ext/493739b/ip_arp_udp_tcp.o \
	${OBJECTDIR}/_ext/493739b/websrv_help_functions.o \
	${OBJECTDIR}/_ext/e5c4706f/Dhcp.o \
	${OBJECTDIR}/_ext/e5c4706f/Dns.o \
	${OBJECTDIR}/_ext/e5c4706f/Ethernet.o \
	${OBJECTDIR}/_ext/e5c4706f/EthernetClient.o \
	${OBJECTDIR}/_ext/e5c4706f/EthernetServer.o \
	${OBJECTDIR}/_ext/e5c4706f/EthernetUdp.o \
	${OBJECTDIR}/_ext/f6bfb9a0/BarometricPressureWebServer.o \
	${OBJECTDIR}/_ext/b96544c1/ChatServer.o \
	${OBJECTDIR}/_ext/993dd5dd/DhcpAddressPrinter.o \
	${OBJECTDIR}/_ext/eeae3c92/DhcpChatServer.o \
	${OBJECTDIR}/_ext/bffb0247/PachubeClient.o \
	${OBJECTDIR}/_ext/a4463d38/PachubeClientString.o \
	${OBJECTDIR}/_ext/d565dc93/TelnetClient.o \
	${OBJECTDIR}/_ext/6728ea58/TwitterClient.o \
	${OBJECTDIR}/_ext/d5ca28f1/UDPSendReceiveString.o \
	${OBJECTDIR}/_ext/d363679a/UdpNtpClient.o \
	${OBJECTDIR}/_ext/80294b79/WebClient.o \
	${OBJECTDIR}/_ext/e9346cee/WebClientRepeating.o \
	${OBJECTDIR}/_ext/9b1886f1/WebServer.o \
	${OBJECTDIR}/_ext/277d5fcc/socket.o \
	${OBJECTDIR}/_ext/277d5fcc/w5100.o \
	${OBJECTDIR}/_ext/84f15ff8/Firmata.o \
	${OBJECTDIR}/_ext/13ec715/AllInputsFirmata.o \
	${OBJECTDIR}/_ext/99539d11/AnalogFirmata.o \
	${OBJECTDIR}/_ext/68590fa5/EchoString.o \
	${OBJECTDIR}/_ext/8166a6c5/I2CFirmata.o \
	${OBJECTDIR}/_ext/d9bfaefb/OldStandardFirmata.o \
	${OBJECTDIR}/_ext/b0f69b86/ServoFirmata.o \
	${OBJECTDIR}/_ext/81e1fbbf/SimpleAnalogFirmata.o \
	${OBJECTDIR}/_ext/939ab2f9/SimpleDigitalFirmata.o \
	${OBJECTDIR}/_ext/763bd664/StandardFirmata.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3CircularBuffer.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileAccessProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileCellManagement.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileClientProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileClientService.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileDataNetworkProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileMockupProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileNetworkProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileNetworkRegistry.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileSMSProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileServerProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileServerService.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3MobileVoiceProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3SMSService.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1AccessProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1BandManagement.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1BaseProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1CellManagement.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ClientProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1DataNetworkProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1DirectModemProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ModemCore.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ModemVerification.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1MultiClientProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1MultiServerProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1PinManagement.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1SMSProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ScanNetworks.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ServerProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1VoiceProvider.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3SoftSerial.o \
	${OBJECTDIR}/_ext/c7c76d69/GSM3VoiceCallService.o \
	${OBJECTDIR}/_ext/5794808c/GSMPachubeClient.o \
	${OBJECTDIR}/_ext/f85733bd/GSMPachubeClientString.o \
	${OBJECTDIR}/_ext/75e8e49d/GsmTwitterClient.o \
	${OBJECTDIR}/_ext/5ba3303e/GsmWebClient.o \
	${OBJECTDIR}/_ext/76926bb6/GsmWebServer.o \
	${OBJECTDIR}/_ext/b8881862/MakeVoiceCall.o \
	${OBJECTDIR}/_ext/d5aaf376/ReceiveSMS.o \
	${OBJECTDIR}/_ext/1da5570d/ReceiveVoiceCall.o \
	${OBJECTDIR}/_ext/c11d30b1/SendSMS.o \
	${OBJECTDIR}/_ext/3df7432c/BandManagement.o \
	${OBJECTDIR}/_ext/78d228ef/GsmScanNetworks.o \
	${OBJECTDIR}/_ext/75933e64/PinManagement.o \
	${OBJECTDIR}/_ext/5bd13e50/TestGPRS.o \
	${OBJECTDIR}/_ext/1eb97664/TestModem.o \
	${OBJECTDIR}/_ext/d1b165f1/TestWebServer.o \
	${OBJECTDIR}/_ext/e1eb0e12/GSM.o \
	${OBJECTDIR}/_ext/e1eb0e12/HWSerial.o \
	${OBJECTDIR}/_ext/e1eb0e12/LOG.o \
	${OBJECTDIR}/_ext/e1eb0e12/SIM900.o \
	${OBJECTDIR}/_ext/e1eb0e12/WideTextFinder.o \
	${OBJECTDIR}/_ext/e1eb0e12/call.o \
	${OBJECTDIR}/_ext/982052e8/GSM_GPRSLibrary_AT.o \
	${OBJECTDIR}/_ext/11585ff3/GSM_GPRSLibrary_Call.o \
	${OBJECTDIR}/_ext/1d59c820/GSM_GPRSLibrary_Client.o \
	${OBJECTDIR}/_ext/6bea2075/GSM_GPRSLibrary_GPS.o \
	${OBJECTDIR}/_ext/6bea4d24/GSM_GPRSLibrary_SMS.o \
	${OBJECTDIR}/_ext/38490398/GSM_GPRSLibrary_Server.o \
	${OBJECTDIR}/_ext/e1eb0e12/gps.o \
	${OBJECTDIR}/_ext/e1eb0e12/inetGSM.o \
	${OBJECTDIR}/_ext/e1eb0e12/sms.o \
	${OBJECTDIR}/_ext/eacc631f/GSM_Shield.o \
	${OBJECTDIR}/_ext/421ea40/GSM_Shield_Call.o \
	${OBJECTDIR}/_ext/9317e240/GSM_Shield_LibVer.o \
	${OBJECTDIR}/_ext/b5cfc472/GSM_Shield_Reg.o \
	${OBJECTDIR}/_ext/429b474/GSM_Shield_Test.o \
	${OBJECTDIR}/_ext/d3551a/IRSendRev.o \
	${OBJECTDIR}/_ext/53a46c64/revTest.o \
	${OBJECTDIR}/_ext/7bfd118b/sendTest.o \
	${OBJECTDIR}/_ext/8fc37b27/IRremote.o \
	${OBJECTDIR}/_ext/f9f75cd8/IRrecord.o \
	${OBJECTDIR}/_ext/59e153b0/IRrecvDemo.o \
	${OBJECTDIR}/_ext/59e18fc1/IRrecvDump.o \
	${OBJECTDIR}/_ext/8c31652a/IRrelay.o \
	${OBJECTDIR}/_ext/d38a2852/IRsendDemo.o \
	${OBJECTDIR}/_ext/88a7aad9/IRtest.o \
	${OBJECTDIR}/_ext/8c4db079/IRtest2.o \
	${OBJECTDIR}/_ext/81f1cc5a/JVCPanasonicSendDemo.o \
	${OBJECTDIR}/_ext/5a2dd4c2/LiquidCrystal.o \
	${OBJECTDIR}/_ext/3768fa15/Autoscroll.o \
	${OBJECTDIR}/_ext/5ba9d6e3/Blink.o \
	${OBJECTDIR}/_ext/1bc8dcaf/Cursor.o \
	${OBJECTDIR}/_ext/c616497f/CustomCharacter.o \
	${OBJECTDIR}/_ext/7dcb7a89/Display.o \
	${OBJECTDIR}/_ext/bbea3ab9/HelloWorld.o \
	${OBJECTDIR}/_ext/3618b026/Scroll.o \
	${OBJECTDIR}/_ext/36c588b5/SerialDisplay.o \
	${OBJECTDIR}/_ext/98141559/TextDirection.o \
	${OBJECTDIR}/_ext/ba85567f/setCursor.o \
	${OBJECTDIR}/_ext/31295168/Mirf.o \
	${OBJECTDIR}/_ext/31295168/MirfHardwareSpiDriver.o \
	${OBJECTDIR}/_ext/31295168/MirfSpiDriver.o \
	${OBJECTDIR}/_ext/a24ad0b9/ping_client.o \
	${OBJECTDIR}/_ext/bd3a0c31/ping_server.o \
	${OBJECTDIR}/_ext/dec72f2b/ping_server_interupt.o \
	${OBJECTDIR}/_ext/f29e880/reg_read.o \
	${OBJECTDIR}/_ext/312b0bee/RF24.o \
	${OBJECTDIR}/_ext/fd4b7022/GettingStarted.o \
	${OBJECTDIR}/_ext/aaec82df/led_remote.o \
	${OBJECTDIR}/_ext/57d0b6c/nordic_fob.o \
	${OBJECTDIR}/_ext/f3589271/pingpair.o \
	${OBJECTDIR}/_ext/9724a7ab/pingpair_dyn.o \
	${OBJECTDIR}/_ext/9724b99a/pingpair_irq.o \
	${OBJECTDIR}/_ext/610d6887/main.o \
	${OBJECTDIR}/_ext/610d6887/pingpair_maple.o \
	${OBJECTDIR}/_ext/703afe8a/pingpair_pl.o \
	${OBJECTDIR}/_ext/cb72a610/pingpair_sleepy.o \
	${OBJECTDIR}/_ext/70bef197/scanner.o \
	${OBJECTDIR}/_ext/ac1f4639/scanner.o \
	${OBJECTDIR}/_ext/5b4cc5e9/starping.o \
	${OBJECTDIR}/_ext/1ae2c9e2/RF24.o \
	${OBJECTDIR}/_ext/98e59216/GettingStarted.o \
	${OBJECTDIR}/_ext/822dbed3/led_remote.o \
	${OBJECTDIR}/_ext/878572d3/nRF24_Arduino_as_hub.o \
	${OBJECTDIR}/_ext/2ac643ef/nRF24_Serial_Chat.o \
	${OBJECTDIR}/_ext/55b7100d/nRF24_sendto_hub.o \
	${OBJECTDIR}/_ext/dcbe4760/nordic_fob.o \
	${OBJECTDIR}/_ext/4de03b65/pingpair.o \
	${OBJECTDIR}/_ext/a306b69f/pingpair_dyn.o \
	${OBJECTDIR}/_ext/a306c88e/pingpair_irq.o \
	${OBJECTDIR}/_ext/fca78a7b/main.o \
	${OBJECTDIR}/_ext/fca78a7b/pingpair_maple.o \
	${OBJECTDIR}/_ext/48a24219/pingpair_multi_dyn.o \
	${OBJECTDIR}/_ext/81214116/pingpair_pl.o \
	${OBJECTDIR}/_ext/a31cc29c/pingpair_sleepy.o \
	${OBJECTDIR}/_ext/c59138b/scanner.o \
	${OBJECTDIR}/_ext/9644aec5/scanner.o \
	${OBJECTDIR}/_ext/b5d46edd/starping.o \
	${OBJECTDIR}/_ext/4f5d5157/RF24.o \
	${OBJECTDIR}/_ext/4f5d5157/bcm2835.o \
	${OBJECTDIR}/_ext/9710be01/pingtest.o \
	${OBJECTDIR}/_ext/9710be01/pongtest.o \
	${OBJECTDIR}/_ext/9710be01/rpi-hub.o \
	${OBJECTDIR}/_ext/9710be01/scanner.o \
	${OBJECTDIR}/_ext/1df54c58/RF24.o \
	${OBJECTDIR}/_ext/1df54c58/compatibility.o \
	${OBJECTDIR}/_ext/388c9420/pingtest.o \
	${OBJECTDIR}/_ext/388c9420/pongtest.o \
	${OBJECTDIR}/_ext/388c9420/rpi-hub.o \
	${OBJECTDIR}/_ext/388c9420/scanner.o \
	${OBJECTDIR}/_ext/388c9420/sendto_hub.o \
	${OBJECTDIR}/_ext/1df54c58/gpio.o \
	${OBJECTDIR}/_ext/1df54c58/spi.o \
	${OBJECTDIR}/_ext/93cfbb9e/EEPROM_AT24C32.o \
	${OBJECTDIR}/_ext/93cfbb9e/RTClib.o \
	${OBJECTDIR}/_ext/d74dbdd8/datecalc.o \
	${OBJECTDIR}/_ext/1aeec4cd/ds1307.o \
	${OBJECTDIR}/_ext/e63b2429/ds1307SqwPin.o \
	${OBJECTDIR}/_ext/63c2a8a9/ds1307nvram.o \
	${OBJECTDIR}/_ext/589d5482/softrtc.o \
	${OBJECTDIR}/_ext/fe1c82d0/Adafruit_GFX.o \
	${OBJECTDIR}/_ext/fe1c82d0/ArduinoRobot.o \
	${OBJECTDIR}/_ext/fe1c82d0/Arduino_LCD.o \
	${OBJECTDIR}/_ext/fe1c82d0/Compass.o \
	${OBJECTDIR}/_ext/fe1c82d0/EEPROM_I2C.o \
	${OBJECTDIR}/_ext/fe1c82d0/EasyTransfer2.o \
	${OBJECTDIR}/_ext/fe1c82d0/Fat16.o \
	${OBJECTDIR}/_ext/fe1c82d0/Melody.o \
	${OBJECTDIR}/_ext/fe1c82d0/Motors.o \
	${OBJECTDIR}/_ext/fe1c82d0/Multiplexer.o \
	${OBJECTDIR}/_ext/fe1c82d0/RobotSdCard.o \
	${OBJECTDIR}/_ext/fe1c82d0/SPI.o \
	${OBJECTDIR}/_ext/fe1c82d0/SdCard.o \
	${OBJECTDIR}/_ext/fe1c82d0/Sensors.o \
	${OBJECTDIR}/_ext/fe1c82d0/Squawk.o \
	${OBJECTDIR}/_ext/fe1c82d0/SquawkSD.o \
	${OBJECTDIR}/_ext/fe1c82d0/Wire.o \
	${OBJECTDIR}/_ext/fe1c82d0/communication.o \
	${OBJECTDIR}/_ext/e36f033a/R01_Logo.o \
	${OBJECTDIR}/_ext/b14b948e/R02_Line_Follow.o \
	${OBJECTDIR}/_ext/f06bd6b5/R03_Disco_Bot.o \
	${OBJECTDIR}/_ext/94b42e26/R04_Compass.o \
	${OBJECTDIR}/_ext/5e176b34/R05_Inputs.o \
	${OBJECTDIR}/_ext/2b24967c/R06_Wheel_Calibration.o \
	${OBJECTDIR}/_ext/44ccaf5b/R07_Runaway_Robot.o \
	${OBJECTDIR}/_ext/ba99de2c/R08_Remote_Control.o \
	${OBJECTDIR}/_ext/1f57dbe0/R09_Picture_Browser.o \
	${OBJECTDIR}/_ext/f9d3dd84/R10_Rescue.o \
	${OBJECTDIR}/_ext/813b5008/R11_Hello_User.o \
	${OBJECTDIR}/_ext/a26cf51d/AllIOPorts.o \
	${OBJECTDIR}/_ext/e1228900/Beep.o \
	${OBJECTDIR}/_ext/d6f44a77/CleanEEPROM.o \
	${OBJECTDIR}/_ext/784dbf00/Compass.o \
	${OBJECTDIR}/_ext/81cbb4be/IRArray.o \
	${OBJECTDIR}/_ext/d4df5d35/LCDDebugPrint.o \
	${OBJECTDIR}/_ext/d91078b2/LCDPrint.o \
	${OBJECTDIR}/_ext/8d514531/LCDWriteText.o \
	${OBJECTDIR}/_ext/efaa3a79/LineFollowWithPause.o \
	${OBJECTDIR}/_ext/356ccf42/Melody.o \
	${OBJECTDIR}/_ext/d7fe6d15/MotorTest.o \
	${OBJECTDIR}/_ext/4211561/SpeedByPotentiometer.o \
	${OBJECTDIR}/_ext/bd296e81/TurnTest.o \
	${OBJECTDIR}/_ext/520c0fcb/keyboardTest.o \
	${OBJECTDIR}/_ext/fe1c82d0/glcdfont.o \
	${OBJECTDIR}/_ext/fe1c82d0/helper.o \
	${OBJECTDIR}/_ext/fe1c82d0/information.o \
	${OBJECTDIR}/_ext/fe1c82d0/keyboard.o \
	${OBJECTDIR}/_ext/fe1c82d0/lcd.o \
	${OBJECTDIR}/_ext/6591812d/RobotTextManager.o \
	${OBJECTDIR}/_ext/6591812d/VirtualKeyboard.o \
	${OBJECTDIR}/_ext/6591812d/twi.o \
	${OBJECTDIR}/_ext/f51816a8/ArduinoRobotMotorBoard.o \
	${OBJECTDIR}/_ext/f51816a8/EasyTransfer2.o \
	${OBJECTDIR}/_ext/f51816a8/Multiplexer.o \
	${OBJECTDIR}/_ext/943cdda/Robot_IR_Array_Test.o \
	${OBJECTDIR}/_ext/bdbc62dd/Robot_Motor_Core.o \
	${OBJECTDIR}/_ext/f51816a8/lineFollow.o \
	${OBJECTDIR}/_ext/614880c9/File.o \
	${OBJECTDIR}/_ext/614880c9/SD.o \
	${OBJECTDIR}/_ext/78137b3e/CardInfo.o \
	${OBJECTDIR}/_ext/2242d51a/Datalogger.o \
	${OBJECTDIR}/_ext/fa10b8f0/DumpFile.o \
	${OBJECTDIR}/_ext/2995c717/Files.o \
	${OBJECTDIR}/_ext/57605889/ReadWrite.o \
	${OBJECTDIR}/_ext/da255959/listfiles.o \
	${OBJECTDIR}/_ext/46007626/Sd2Card.o \
	${OBJECTDIR}/_ext/46007626/SdFile.o \
	${OBJECTDIR}/_ext/46007626/SdVolume.o \
	${OBJECTDIR}/_ext/c7c79a14/SPI.o \
	${OBJECTDIR}/_ext/3515a2d6/BarometricPressureSensor.o \
	${OBJECTDIR}/_ext/f98d8e24/BarometricPressureSensor.o \
	${OBJECTDIR}/_ext/4fbf89f5/DigitalPotControl.o \
	${OBJECTDIR}/_ext/f4539981/Servo.o \
	${OBJECTDIR}/_ext/c27ca48e/Knob.o \
	${OBJECTDIR}/_ext/8d8c9bd4/Sweep.o \
	${OBJECTDIR}/_ext/86678113/SoftwareSerial.o \
	${OBJECTDIR}/_ext/91710985/SoftwareSerialExample.o \
	${OBJECTDIR}/_ext/b65d36e0/TwoPortReceive.o \
	${OBJECTDIR}/_ext/46b21339/Stepper.o \
	${OBJECTDIR}/_ext/d236cbb/MotorKnob.o \
	${OBJECTDIR}/_ext/16e695b1/stepper_oneRevolution.o \
	${OBJECTDIR}/_ext/533b2487/stepper_oneStepAtATime.o \
	${OBJECTDIR}/_ext/e5212774/stepper_speedControl.o \
	${OBJECTDIR}/_ext/26704cc/streaming_example.o \
	${OBJECTDIR}/_ext/c7c79caa/TFT.o \
	${OBJECTDIR}/_ext/3a15cc34/TFTBitmapLogo.o \
	${OBJECTDIR}/_ext/d3221457/TFTColorPicker.o \
	${OBJECTDIR}/_ext/485e795/TFTDisplayText.o \
	${OBJECTDIR}/_ext/99f4f9ff/TFTEtchASketch.o \
	${OBJECTDIR}/_ext/eeb8e454/TFTGraph.o \
	${OBJECTDIR}/_ext/cde8fc32/TFTPong.o \
	${OBJECTDIR}/_ext/e83038a4/EsploraTFTBitmapLogo.o \
	${OBJECTDIR}/_ext/e85535e7/EsploraTFTColorPicker.o \
	${OBJECTDIR}/_ext/af281b8f/EsploraTFTEtchASketch.o \
	${OBJECTDIR}/_ext/2b0871e4/EsploraTFTGraph.o \
	${OBJECTDIR}/_ext/b1959376/EsploraTFTHorizion.o \
	${OBJECTDIR}/_ext/9a97ca2/EsploraTFTPong.o \
	${OBJECTDIR}/_ext/9ab287e/EsploraTFTTemp.o \
	${OBJECTDIR}/_ext/455a2107/Adafruit_GFX.o \
	${OBJECTDIR}/_ext/455a2107/Adafruit_ST7735.o \
	${OBJECTDIR}/_ext/455a2107/glcdfont.o \
	${OBJECTDIR}/_ext/4f2050ff/Web_AjaxBuzzer.o \
	${OBJECTDIR}/_ext/a3c39aee/Web_AjaxRGB.o \
	${OBJECTDIR}/_ext/94ed6b13/Web_AjaxRGB_mobile.o \
	${OBJECTDIR}/_ext/197e9ef7/Web_Authentication.o \
	${OBJECTDIR}/_ext/7a3a23f/Web_Buzzer.o \
	${OBJECTDIR}/_ext/dc507d22/Web_Demo.o \
	${OBJECTDIR}/_ext/5ecc99df/Web_HelloWorld.o \
	${OBJECTDIR}/_ext/ae0911fc/Web_Image.o \
	${OBJECTDIR}/_ext/3e61d5c/System.o \
	${OBJECTDIR}/_ext/3e61d5c/Web_Net_Setup.o \
	${OBJECTDIR}/_ext/ae6682a8/Web_Parms.o \
	${OBJECTDIR}/_ext/312dd7cd/WiFi.o \
	${OBJECTDIR}/_ext/312dd7cd/WiFiClient.o \
	${OBJECTDIR}/_ext/312dd7cd/WiFiServer.o \
	${OBJECTDIR}/_ext/312dd7cd/WiFiUdp.o \
	${OBJECTDIR}/_ext/f25c664a/ConnectNoEncryption.o \
	${OBJECTDIR}/_ext/c476d6/ConnectWithWEP.o \
	${OBJECTDIR}/_ext/c4781c/ConnectWithWPA.o \
	${OBJECTDIR}/_ext/23ce4506/ScanNetworks.o \
	${OBJECTDIR}/_ext/e6a27f16/SimpleWebServerWiFi.o \
	${OBJECTDIR}/_ext/88674834/WiFiChatServer.o \
	${OBJECTDIR}/_ext/7b4a65f4/WiFiPachubeClient.o \
	${OBJECTDIR}/_ext/30d56b25/WiFiPachubeClientString.o \
	${OBJECTDIR}/_ext/22784e05/WiFiTwitterClient.o \
	${OBJECTDIR}/_ext/e9f25a4d/WiFiUdpNtpClient.o \
	${OBJECTDIR}/_ext/22a934a4/WiFiUdpSendReceiveString.o \
	${OBJECTDIR}/_ext/e9ef8da6/WiFiWebClient.o \
	${OBJECTDIR}/_ext/fe414d61/WiFiWebClientRepeating.o \
	${OBJECTDIR}/_ext/4dec91e/WiFiWebServer.o \
	${OBJECTDIR}/_ext/f3b0892a/server_drv.o \
	${OBJECTDIR}/_ext/f3b0892a/socket.o \
	${OBJECTDIR}/_ext/f3b0892a/spi_drv.o \
	${OBJECTDIR}/_ext/f3b0892a/wifi_drv.o \
	${OBJECTDIR}/_ext/312ddd1d/Wire.o \
	${OBJECTDIR}/_ext/a78925e2/SFRRanger_reader.o \
	${OBJECTDIR}/_ext/f4c8e6f2/digital_potentiometer.o \
	${OBJECTDIR}/_ext/b28f5b2c/master_reader.o \
	${OBJECTDIR}/_ext/bbd2a6dc/master_writer.o \
	${OBJECTDIR}/_ext/cb3e16eb/slave_receiver.o \
	${OBJECTDIR}/_ext/34d15631/slave_sender.o \
	${OBJECTDIR}/_ext/9f3e3e7a/twi.o \
	${OBJECTDIR}/_ext/b5825397/enc28j60.o \
	${OBJECTDIR}/_ext/b5825397/etherShield.o \
	${OBJECTDIR}/_ext/b5825397/ip_arp_udp_tcp.o \
	${OBJECTDIR}/_ext/fac81f7c/enc28j60.o \
	${OBJECTDIR}/_ext/fac81f7c/etherShield.o \
	${OBJECTDIR}/_ext/5fac4e6e/etherShield_client.o \
	${OBJECTDIR}/_ext/95dd7f83/etherShield_client1.o \
	${OBJECTDIR}/_ext/f39a28d5/etherShield_ping.o \
	${OBJECTDIR}/_ext/f71793a2/etherShield_web_switch.o \
	${OBJECTDIR}/_ext/65cf7dc6/etherShield_web_temperature.o \
	${OBJECTDIR}/_ext/f7c5aa14/ethershield_webserver.o \
	${OBJECTDIR}/_ext/fac81f7c/ip_arp_udp_tcp.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/arduino_fly_small.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/arduino_fly_small.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/arduino_fly_small ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/b54ff340/myGBoard_25.o: ../../_a4s_Projects/myGBoard_25/myGBoard_25.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b54ff340
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b54ff340/myGBoard_25.o ../../_a4s_Projects/myGBoard_25/myGBoard_25.ino

${OBJECTDIR}/_ext/b54ff341/myGBoard_26.o: ../../_a4s_Projects/myGBoard_26/myGBoard_26.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b54ff341
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b54ff341/myGBoard_26.o ../../_a4s_Projects/myGBoard_26/myGBoard_26.ino

${OBJECTDIR}/_ext/8db27011/myMEGA_29.o: ../../_a4s_Projects/myMEGA_29/myMEGA_29.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8db27011
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8db27011/myMEGA_29.o ../../_a4s_Projects/myMEGA_29/myMEGA_29.ino

${OBJECTDIR}/_ext/1afddbcf/myUNO_25.o: ../../_a4s_Projects/myUNO_25/myUNO_25.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1afddbcf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1afddbcf/myUNO_25.o ../../_a4s_Projects/myUNO_25/myUNO_25.ino

${OBJECTDIR}/_ext/1afddbd0/myUNO_26.o: ../../_a4s_Projects/myUNO_26/myUNO_26.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1afddbd0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1afddbd0/myUNO_26.o ../../_a4s_Projects/myUNO_26/myUNO_26.ino

${OBJECTDIR}/_ext/1afddbd1/myUNO_27.o: ../../_a4s_Projects/myUNO_27/myUNO_27.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1afddbd1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1afddbd1/myUNO_27.o ../../_a4s_Projects/myUNO_27/myUNO_27.ino

${OBJECTDIR}/_ext/1afddbd2/myUNO_28.o: ../../_a4s_Projects/myUNO_28/myUNO_28.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1afddbd2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1afddbd2/myUNO_28.o ../../_a4s_Projects/myUNO_28/myUNO_28.ino

${OBJECTDIR}/_ext/70ae97d9/DS3231.o: ../../arduino-1.0.5-r2/libraries/DS3231/DS3231.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/70ae97d9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/70ae97d9/DS3231.o ../../arduino-1.0.5-r2/libraries/DS3231/DS3231.cpp

${OBJECTDIR}/_ext/511d6b5/DS3231_TEST.o: ../../arduino-1.0.5-r2/libraries/DS3231/Examples/DS3231_TEST/DS3231_TEST.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/511d6b5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/511d6b5/DS3231_TEST.o ../../arduino-1.0.5-r2/libraries/DS3231/Examples/DS3231_TEST/DS3231_TEST.ino

${OBJECTDIR}/_ext/7c6f0e8/LiquidCrystal_I2C.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/LiquidCrystal_I2C.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7c6f0e8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7c6f0e8/LiquidCrystal_I2C.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/LiquidCrystal_I2C.cpp

${OBJECTDIR}/_ext/21c918cd/CustomChars.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/examples/CustomChars/CustomChars.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/21c918cd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/21c918cd/CustomChars.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/examples/CustomChars/CustomChars.pde

${OBJECTDIR}/_ext/3c91c7df/HelloWorld.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/examples/HelloWorld/HelloWorld.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/3c91c7df
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3c91c7df/HelloWorld.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/examples/HelloWorld/HelloWorld.pde

${OBJECTDIR}/_ext/55a73432/HelloWorld1.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/examples/HelloWorld1/HelloWorld1.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/55a73432
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/55a73432/HelloWorld1.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/examples/HelloWorld1/HelloWorld1.pde

${OBJECTDIR}/_ext/e0e821cf/SerialDisplay.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/examples/SerialDisplay/SerialDisplay.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/e0e821cf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e0e821cf/SerialDisplay.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal_I2C/examples/SerialDisplay/SerialDisplay.pde

${OBJECTDIR}/_ext/990809c9/BlinkWithoutDelay_my_linple_1.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/BlinkWithoutDelay_my_linple_1/BlinkWithoutDelay_my_linple_1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/990809c9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/990809c9/BlinkWithoutDelay_my_linple_1.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/BlinkWithoutDelay_my_linple_1/BlinkWithoutDelay_my_linple_1.ino

${OBJECTDIR}/_ext/55b50f49/Blink_my_test_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/Blink_my_test_11/Blink_my_test_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/55b50f49
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/55b50f49/Blink_my_test_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/Blink_my_test_11/Blink_my_test_11.ino

${OBJECTDIR}/_ext/10b83e6b/EasyTransfer_RX_Example_my_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/EasyTransfer_RX_Example_my_11/EasyTransfer_RX_Example_my_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/10b83e6b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/10b83e6b/EasyTransfer_RX_Example_my_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/EasyTransfer_RX_Example_my_11/EasyTransfer_RX_Example_my_11.ino

${OBJECTDIR}/_ext/f544634/EasyTransfer_RX_Example_my_21_gboard.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/EasyTransfer_RX_Example_my_21_gboard/EasyTransfer_RX_Example_my_21_gboard.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f544634
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f544634/EasyTransfer_RX_Example_my_21_gboard.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/EasyTransfer_RX_Example_my_21_gboard/EasyTransfer_RX_Example_my_21_gboard.ino

${OBJECTDIR}/_ext/4d1ab8e7/EasyVRBridge_my_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/EasyVRBridge_my_11/EasyVRBridge_my_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4d1ab8e7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4d1ab8e7/EasyVRBridge_my_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/EasyVRBridge_my_11/EasyVRBridge_my_11.ino

${OBJECTDIR}/_ext/aa09f0ab/EtherShield_DNSTest_theOnlyWorking_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/EtherShield_DNSTest_theOnlyWorking_11/EtherShield_DNSTest_theOnlyWorking_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/aa09f0ab
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/aa09f0ab/EtherShield_DNSTest_theOnlyWorking_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/EtherShield_DNSTest_theOnlyWorking_11/EtherShield_DNSTest_theOnlyWorking_11.ino

${OBJECTDIR}/_ext/9ef0bc7c/GSM_GPRSLibrary_Call_my1.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/GSM_GPRSLibrary_Call_my1/GSM_GPRSLibrary_Call_my1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9ef0bc7c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9ef0bc7c/GSM_GPRSLibrary_Call_my1.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/GSM_GPRSLibrary_Call_my1/GSM_GPRSLibrary_Call_my1.ino

${OBJECTDIR}/_ext/720dd747/GSM_GPRSLibrary_SMS_my1.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/GSM_GPRSLibrary_SMS_my1/GSM_GPRSLibrary_SMS_my1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/720dd747
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/720dd747/GSM_GPRSLibrary_SMS_my1.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/GSM_GPRSLibrary_SMS_my1/GSM_GPRSLibrary_SMS_my1.ino

${OBJECTDIR}/_ext/25f5d455/GSM_GPRSLibrary_SMS_my_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/GSM_GPRSLibrary_SMS_my_11/GSM_GPRSLibrary_SMS_my_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/25f5d455
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/25f5d455/GSM_GPRSLibrary_SMS_my_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/GSM_GPRSLibrary_SMS_my_11/GSM_GPRSLibrary_SMS_my_11.ino

${OBJECTDIR}/_ext/645448b8/IRrecord_my_21_simple.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_21_simple/IRrecord_my_21_simple.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/645448b8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/645448b8/IRrecord_my_21_simple.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_21_simple/IRrecord_my_21_simple.ino

${OBJECTDIR}/_ext/6ac76694/IRrecord_my_31_with_ElectroSensor.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_31_with_ElectroSensor/IRrecord_my_31_with_ElectroSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6ac76694
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6ac76694/IRrecord_my_31_with_ElectroSensor.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_31_with_ElectroSensor/IRrecord_my_31_with_ElectroSensor.ino

${OBJECTDIR}/_ext/52693cf3/IRrecord_my_32_with_ElectroSensor.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_32_with_ElectroSensor/IRrecord_my_32_with_ElectroSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/52693cf3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/52693cf3/IRrecord_my_32_with_ElectroSensor.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_32_with_ElectroSensor/IRrecord_my_32_with_ElectroSensor.ino

${OBJECTDIR}/_ext/3a0b1352/IRrecord_my_33_with_ElectroSensor.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_33_with_ElectroSensor/IRrecord_my_33_with_ElectroSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3a0b1352
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3a0b1352/IRrecord_my_33_with_ElectroSensor.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_33_with_ElectroSensor/IRrecord_my_33_with_ElectroSensor.ino

${OBJECTDIR}/_ext/21ace9b1/IRrecord_my_34_with_ElectroSensor.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_34_with_ElectroSensor/IRrecord_my_34_with_ElectroSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/21ace9b1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/21ace9b1/IRrecord_my_34_with_ElectroSensor.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecord_my_34_with_ElectroSensor/IRrecord_my_34_with_ElectroSensor.ino

${OBJECTDIR}/_ext/9d657750/IRrecvDemo_1.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecvDemo_1/IRrecvDemo_1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9d657750
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9d657750/IRrecvDemo_1.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecvDemo_1/IRrecvDemo_1.ino

${OBJECTDIR}/_ext/f4972e1/IRrecvDemo_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecvDemo_11/IRrecvDemo_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f4972e1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f4972e1/IRrecvDemo_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/IRrecvDemo_11/IRrecvDemo_11.ino

${OBJECTDIR}/_ext/7763af9/Scroll.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/Scroll/Scroll.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/7763af9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7763af9/Scroll.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/Scroll/Scroll.ino

${OBJECTDIR}/_ext/2dc87b30/TestEasyVR_my_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/TestEasyVR_my_11/TestEasyVR_my_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2dc87b30
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2dc87b30/TestEasyVR_my_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/TestEasyVR_my_11/TestEasyVR_my_11.ino

${OBJECTDIR}/_ext/2dc87b4f/TestEasyVR_my_21.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/TestEasyVR_my_21/TestEasyVR_my_21.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2dc87b4f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2dc87b4f/TestEasyVR_my_21.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/TestEasyVR_my_21/TestEasyVR_my_21.ino

${OBJECTDIR}/_ext/5a355233/_______.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/_______/_______.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5a355233
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5a355233/_______.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/_______/_______.ino

${OBJECTDIR}/_ext/697c70f5/analog_write_n_read_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/analog_write_n_read_11/analog_write_n_read_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/697c70f5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/697c70f5/analog_write_n_read_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/analog_write_n_read_11/analog_write_n_read_11.ino

${OBJECTDIR}/_ext/722ec536/analog_write_rgb_led.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/analog_write_rgb_led/analog_write_rgb_led.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/722ec536
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/722ec536/analog_write_rgb_led.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/analog_write_rgb_led/analog_write_rgb_led.ino

${OBJECTDIR}/_ext/668ed198/blink_L_n_led.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/blink_L_n_led/blink_L_n_led.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/668ed198
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/668ed198/blink_L_n_led.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/blink_L_n_led/blink_L_n_led.ino

${OBJECTDIR}/_ext/f45b0383/buttons_n_leds.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/buttons_n_leds/buttons_n_leds.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f45b0383
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f45b0383/buttons_n_leds.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/buttons_n_leds/buttons_n_leds.ino

${OBJECTDIR}/_ext/8ead8a25/ehternet_led_works_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/ehternet_led_works_11/ehternet_led_works_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8ead8a25
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8ead8a25/ehternet_led_works_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/ehternet_led_works_11/ehternet_led_works_11.ino

${OBJECTDIR}/_ext/99cdb2c1/eternet_led.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/eternet_led/eternet_led.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/99cdb2c1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/99cdb2c1/eternet_led.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/eternet_led/eternet_led.ino

${OBJECTDIR}/_ext/46537692/ir_rec_n_send.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/ir_rec_n_send/ir_rec_n_send.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/46537692
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/46537692/ir_rec_n_send.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/ir_rec_n_send/ir_rec_n_send.ino

${OBJECTDIR}/_ext/66b5f2f4/my5100_WebClient.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebClient/my5100_WebClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/66b5f2f4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/66b5f2f4/my5100_WebClient.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebClient/my5100_WebClient.ino

${OBJECTDIR}/_ext/81a52e6c/my5100_WebServer.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebServer/my5100_WebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/81a52e6c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/81a52e6c/my5100_WebServer.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebServer/my5100_WebServer.ino

${OBJECTDIR}/_ext/ad134f1f/my5100_WebServer_2.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebServer_2/my5100_WebServer_2.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ad134f1f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ad134f1f/my5100_WebServer_2.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebServer_2/my5100_WebServer_2.ino

${OBJECTDIR}/_ext/ff3ae18e/my5100_WebServer_withCurrentSensor_3.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebServer_withCurrentSensor_3/my5100_WebServer_withCurrentSensor_3.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ff3ae18e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ff3ae18e/my5100_WebServer_withCurrentSensor_3.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebServer_withCurrentSensor_3/my5100_WebServer_withCurrentSensor_3.ino

${OBJECTDIR}/_ext/f03a0fec/my5100_WebServer_with_EasyTransfer_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebServer_with_EasyTransfer_11/my5100_WebServer_with_EasyTransfer_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f03a0fec
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f03a0fec/my5100_WebServer_with_EasyTransfer_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my5100_WebServer_with_EasyTransfer_11/my5100_WebServer_with_EasyTransfer_11.ino

${OBJECTDIR}/_ext/5a1dcac8/myGBoard_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myGBoard_11/myGBoard_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5a1dcac8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5a1dcac8/myGBoard_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myGBoard_11/myGBoard_11.ino

${OBJECTDIR}/_ext/5a1dcae7/myGBoard_21.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myGBoard_21/myGBoard_21.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5a1dcae7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5a1dcae7/myGBoard_21.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myGBoard_21/myGBoard_21.ino

${OBJECTDIR}/_ext/5a1dcaea/myGBoard_24.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myGBoard_24/myGBoard_24.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5a1dcaea
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5a1dcaea/myGBoard_24.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myGBoard_24/myGBoard_24.ino

${OBJECTDIR}/_ext/82020e61/myMEGA_27.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA/myMEGA_27/myMEGA_27.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/82020e61
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/82020e61/myMEGA_27.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA/myMEGA_27/myMEGA_27.ino

${OBJECTDIR}/_ext/64d83655/myMEGA_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_11/myMEGA_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/64d83655
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/64d83655/myMEGA_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_11/myMEGA_11.ino

${OBJECTDIR}/_ext/64d83675/myMEGA_22.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_22/myMEGA_22.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/64d83675
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/64d83675/myMEGA_22.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_22/myMEGA_22.ino

${OBJECTDIR}/_ext/64d83676/myMEGA_23.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_23/myMEGA_23.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/64d83676
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/64d83676/myMEGA_23.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_23/myMEGA_23.ino

${OBJECTDIR}/_ext/64d83677/myMEGA_24.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_24/myMEGA_24.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/64d83677
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/64d83677/myMEGA_24.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_24/myMEGA_24.ino

${OBJECTDIR}/_ext/64d83678/myMEGA_25.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_25/myMEGA_25.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/64d83678
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/64d83678/myMEGA_25.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_25/myMEGA_25.ino

${OBJECTDIR}/_ext/64d83679/myMEGA_26.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_26/myMEGA_26.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/64d83679
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/64d83679/myMEGA_26.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_26/myMEGA_26.ino

${OBJECTDIR}/_ext/64d8367b/myMEGA_28.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_28/myMEGA_28.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/64d8367b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/64d8367b/myMEGA_28.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myMEGA_28/myMEGA_28.ino

${OBJECTDIR}/_ext/e8201be1/myUNO_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUNO_11/myUNO_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e8201be1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e8201be1/myUNO_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUNO_11/myUNO_11.ino

${OBJECTDIR}/_ext/e8201c00/myUNO_21.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUNO_21/myUNO_21.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e8201c00
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e8201c00/myUNO_21.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUNO_21/myUNO_21.ino

${OBJECTDIR}/_ext/e8201c03/myUNO_24.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUNO_24/myUNO_24.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e8201c03
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e8201c03/myUNO_24.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUNO_24/myUNO_24.ino

${OBJECTDIR}/_ext/a0709e24/myUltrasound_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUltrasound_11/myUltrasound_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a0709e24
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a0709e24/myUltrasound_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUltrasound_11/myUltrasound_11.ino

${OBJECTDIR}/_ext/a0709e25/myUltrasound_12.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUltrasound_12/myUltrasound_12.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a0709e25
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a0709e25/myUltrasound_12.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUltrasound_12/myUltrasound_12.ino

${OBJECTDIR}/_ext/a0709e26/myUltrasound_13.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUltrasound_13/myUltrasound_13.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a0709e26
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a0709e26/myUltrasound_13.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/myUltrasound_13/myUltrasound_13.ino

${OBJECTDIR}/_ext/8991f434/my_AT24C32_TEST_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_AT24C32_TEST_11/my_AT24C32_TEST_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8991f434
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8991f434/my_AT24C32_TEST_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_AT24C32_TEST_11/my_AT24C32_TEST_11.ino

${OBJECTDIR}/_ext/a25293da/my_EasyVR_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_EasyVR_11/my_EasyVR_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a25293da
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a25293da/my_EasyVR_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_EasyVR_11/my_EasyVR_11.ino

${OBJECTDIR}/_ext/5b4b17e0/my_ElectroSensor_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_ElectroSensor_11/my_ElectroSensor_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5b4b17e0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5b4b17e0/my_ElectroSensor_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_ElectroSensor_11/my_ElectroSensor_11.ino

${OBJECTDIR}/_ext/f7bd962c/my_GSM_Shield_Test_ext1.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_GSM_Shield_Test_ext1/my_GSM_Shield_Test_ext1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f7bd962c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f7bd962c/my_GSM_Shield_Test_ext1.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_GSM_Shield_Test_ext1/my_GSM_Shield_Test_ext1.ino

${OBJECTDIR}/_ext/34e6dffc/my_SensorNode_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_SensorNode_11/my_SensorNode_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/34e6dffc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34e6dffc/my_SensorNode_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_SensorNode_11/my_SensorNode_11.ino

${OBJECTDIR}/_ext/977382d/my_i2c_scanner_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_i2c_scanner_11/my_i2c_scanner_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/977382d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/977382d/my_i2c_scanner_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_i2c_scanner_11/my_i2c_scanner_11.ino

${OBJECTDIR}/_ext/9b088008/my_ir_send_11.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_ir_send_11/my_ir_send_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9b088008
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9b088008/my_ir_send_11.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/my_ir_send_11/my_ir_send_11.ino

${OBJECTDIR}/_ext/9989f973/speaker.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/speaker/speaker.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9989f973
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9989f973/speaker.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/speaker/speaker.ino

${OBJECTDIR}/_ext/fb62c230/ultrasound_n_relay.o: D/Alex_D/_Apps/_Arduino/_a4s_Projects/ultrasound_n_relay/ultrasound_n_relay.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fb62c230
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fb62c230/ultrasound_n_relay.o D/Alex_D/_Apps/_Arduino/_a4s_Projects/ultrasound_n_relay/ultrasound_n_relay.ino

${OBJECTDIR}/_ext/7c68ce78/EEPROM.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EEPROM/EEPROM.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7c68ce78
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7c68ce78/EEPROM.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EEPROM/EEPROM.cpp

${OBJECTDIR}/_ext/5bdbf4fd/eeprom_clear.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_clear/eeprom_clear.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5bdbf4fd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5bdbf4fd/eeprom_clear.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_clear/eeprom_clear.ino

${OBJECTDIR}/_ext/9fe484e6/eeprom_read.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_read/eeprom_read.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9fe484e6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9fe484e6/eeprom_read.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_read/eeprom_read.ino

${OBJECTDIR}/_ext/5cf8968f/eeprom_write.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_write/eeprom_write.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5cf8968f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5cf8968f/eeprom_write.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_write/eeprom_write.ino

${OBJECTDIR}/_ext/7fad736d/ETHER_28J60.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/ETHER_28J60.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7fad736d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7fad736d/ETHER_28J60.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/ETHER_28J60.cpp

${OBJECTDIR}/_ext/c30b700f/EchoParams.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/examples/EchoParams/EchoParams.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/c30b700f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c30b700f/EchoParams.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/examples/EchoParams/EchoParams.pde

${OBJECTDIR}/_ext/fd9ad5e4/HelloWorld.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/examples/HelloWorld/HelloWorld.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/fd9ad5e4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fd9ad5e4/HelloWorld.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/examples/HelloWorld/HelloWorld.pde

${OBJECTDIR}/_ext/8cbcdd12/ServeReadings.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/examples/ServeReadings/ServeReadings.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/8cbcdd12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8cbcdd12/ServeReadings.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/examples/ServeReadings/ServeReadings.pde

${OBJECTDIR}/_ext/9317c036/WebRemote.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/examples/WebRemote/WebRemote.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9317c036
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9317c036/WebRemote.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/ETHER_28J60/examples/WebRemote/WebRemote.pde

${OBJECTDIR}/_ext/8f4b6795/EasyTransferI2C.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyTransferI2C/EasyTransferI2C.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/8f4b6795
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8f4b6795/EasyTransferI2C.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyTransferI2C/EasyTransferI2C.cpp

${OBJECTDIR}/_ext/1ac29d37/EasyTransfer_RX_Example.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyTransferI2C/Examples/EasyTransfer_RX_Example/EasyTransfer_RX_Example.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/1ac29d37
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1ac29d37/EasyTransfer_RX_Example.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyTransferI2C/Examples/EasyTransfer_RX_Example/EasyTransfer_RX_Example.pde

${OBJECTDIR}/_ext/3557f75/EasyTransfer_TX_Example.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyTransferI2C/Examples/EasyTransfer_TX_Example/EasyTransfer_TX_Example.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/3557f75
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3557f75/EasyTransfer_TX_Example.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyTransferI2C/Examples/EasyTransfer_TX_Example/EasyTransfer_TX_Example.pde

${OBJECTDIR}/_ext/7e03dcd6/EasyVR.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyVR/EasyVR.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7e03dcd6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7e03dcd6/EasyVR.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyVR/EasyVR.cpp

${OBJECTDIR}/_ext/7e03dcd6/EasyVRBridge.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyVR/EasyVRBridge.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7e03dcd6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7e03dcd6/EasyVRBridge.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyVR/EasyVRBridge.cpp

${OBJECTDIR}/_ext/12d28314/EasyVRBridge.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyVR/examples/EasyVRBridge/EasyVRBridge.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/12d28314
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/12d28314/EasyVRBridge.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyVR/examples/EasyVRBridge/EasyVRBridge.ino

${OBJECTDIR}/_ext/70e1c5d/TestEasyVR.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyVR/examples/TestEasyVR/TestEasyVR.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/70e1c5d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/70e1c5d/TestEasyVR.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EasyVR/examples/TestEasyVR/TestEasyVR.ino

${OBJECTDIR}/_ext/60ff2bdc/Esplora.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/Esplora.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/60ff2bdc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/60ff2bdc/Esplora.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/Esplora.cpp

${OBJECTDIR}/_ext/8bf757bc/EsploraAccelerometer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraAccelerometer/EsploraAccelerometer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8bf757bc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8bf757bc/EsploraAccelerometer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraAccelerometer/EsploraAccelerometer.ino

${OBJECTDIR}/_ext/da7713c9/EsploraBlink.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraBlink/EsploraBlink.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/da7713c9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/da7713c9/EsploraBlink.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraBlink/EsploraBlink.ino

${OBJECTDIR}/_ext/922ad036/EsploraJoystickMouse.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraJoystickMouse/EsploraJoystickMouse.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/922ad036
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/922ad036/EsploraJoystickMouse.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraJoystickMouse/EsploraJoystickMouse.ino

${OBJECTDIR}/_ext/1dbaf0d5/EsploraLedShow.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLedShow/EsploraLedShow.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1dbaf0d5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1dbaf0d5/EsploraLedShow.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLedShow/EsploraLedShow.ino

${OBJECTDIR}/_ext/99a329fd/EsploraLedShow2.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLedShow2/EsploraLedShow2.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/99a329fd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/99a329fd/EsploraLedShow2.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLedShow2/EsploraLedShow2.ino

${OBJECTDIR}/_ext/b0a1f5a4/EsploraLightCalibrator.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLightCalibrator/EsploraLightCalibrator.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b0a1f5a4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b0a1f5a4/EsploraLightCalibrator.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLightCalibrator/EsploraLightCalibrator.ino

${OBJECTDIR}/_ext/db165292/EsploraMusic.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraMusic/EsploraMusic.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/db165292
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/db165292/EsploraMusic.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraMusic/EsploraMusic.ino

${OBJECTDIR}/_ext/58bc6056/EsploraSoundSensor.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraSoundSensor/EsploraSoundSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/58bc6056
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/58bc6056/EsploraSoundSensor.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraSoundSensor/EsploraSoundSensor.ino

${OBJECTDIR}/_ext/f430473b/EsploraTemperatureSensor.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraTemperatureSensor/EsploraTemperatureSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f430473b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f430473b/EsploraTemperatureSensor.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraTemperatureSensor/EsploraTemperatureSensor.ino

${OBJECTDIR}/_ext/78b0b473/EsploraKart.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraKart/EsploraKart.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/78b0b473
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/78b0b473/EsploraKart.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraKart/EsploraKart.ino

${OBJECTDIR}/_ext/78b32e53/EsploraPong.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraPong/EsploraPong.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/78b32e53
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/78b32e53/EsploraPong.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraPong/EsploraPong.ino

${OBJECTDIR}/_ext/1b7d63e1/EsploraRemote.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraRemote/EsploraRemote.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1b7d63e1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1b7d63e1/EsploraRemote.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraRemote/EsploraRemote.ino

${OBJECTDIR}/_ext/9de470d3/EsploraTable.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraTable/EsploraTable.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9de470d3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9de470d3/EsploraTable.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraTable/EsploraTable.ino

${OBJECTDIR}/_ext/493739b/EtherShield.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/EtherShield.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/493739b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/493739b/EtherShield.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/EtherShield.cpp

${OBJECTDIR}/_ext/493739b/dhcp.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/dhcp.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/493739b
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/493739b/dhcp.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/dhcp.c

${OBJECTDIR}/_ext/493739b/dnslkup.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/dnslkup.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/493739b
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/493739b/dnslkup.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/dnslkup.c

${OBJECTDIR}/_ext/493739b/enc28j60.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/enc28j60.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/493739b
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/493739b/enc28j60.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/enc28j60.c

${OBJECTDIR}/_ext/e9575e05/EtherShield_DHCPTest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_DHCPTest/EtherShield_DHCPTest.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/e9575e05
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e9575e05/EtherShield_DHCPTest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_DHCPTest/EtherShield_DHCPTest.pde

${OBJECTDIR}/_ext/af8ecb19/EtherShield_DNSTest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_DNSTest/EtherShield_DNSTest.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/af8ecb19
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/af8ecb19/EtherShield_DNSTest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_DNSTest/EtherShield_DNSTest.pde

${OBJECTDIR}/_ext/8f2114d/EtherShield_PachubeRGB.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_PachubeRGB/EtherShield_PachubeRGB.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/8f2114d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8f2114d/EtherShield_PachubeRGB.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_PachubeRGB/EtherShield_PachubeRGB.pde

${OBJECTDIR}/_ext/f144e6b3/EtherShield_TFTPServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_TFTPServer/EtherShield_TFTPServer.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/f144e6b3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f144e6b3/EtherShield_TFTPServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_TFTPServer/EtherShield_TFTPServer.pde

${OBJECTDIR}/_ext/e1ff9f1f/EtherShield_broadcast.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_broadcast/EtherShield_broadcast.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1ff9f1f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1ff9f1f/EtherShield_broadcast.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_broadcast/EtherShield_broadcast.pde

${OBJECTDIR}/_ext/da828a2a/EtherShield_readpachube.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_readpachube/EtherShield_readpachube.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/da828a2a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/da828a2a/EtherShield_readpachube.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_readpachube/EtherShield_readpachube.pde

${OBJECTDIR}/_ext/9859135c/EtherShield_twitterclient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_twitterclient/EtherShield_twitterclient.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9859135c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9859135c/EtherShield_twitterclient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_twitterclient/EtherShield_twitterclient.pde

${OBJECTDIR}/_ext/3448e1f5/Ethershield_webserver.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_webserver/Ethershield_webserver.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/3448e1f5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3448e1f5/Ethershield_webserver.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_webserver/Ethershield_webserver.pde

${OBJECTDIR}/_ext/3923b7bd/EtherShield_wolclient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_wolclient/EtherShield_wolclient.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/3923b7bd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3923b7bd/EtherShield_wolclient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_wolclient/EtherShield_wolclient.pde

${OBJECTDIR}/_ext/493739b/ip_arp_udp_tcp.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/ip_arp_udp_tcp.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/493739b
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/493739b/ip_arp_udp_tcp.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/ip_arp_udp_tcp.c

${OBJECTDIR}/_ext/493739b/websrv_help_functions.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/websrv_help_functions.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/493739b
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/493739b/websrv_help_functions.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/EtherShield2/websrv_help_functions.c

${OBJECTDIR}/_ext/e5c4706f/Dhcp.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/Dhcp.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e5c4706f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e5c4706f/Dhcp.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/Dhcp.cpp

${OBJECTDIR}/_ext/e5c4706f/Dns.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/Dns.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e5c4706f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e5c4706f/Dns.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/Dns.cpp

${OBJECTDIR}/_ext/e5c4706f/Ethernet.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/Ethernet.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e5c4706f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e5c4706f/Ethernet.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/Ethernet.cpp

${OBJECTDIR}/_ext/e5c4706f/EthernetClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/EthernetClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e5c4706f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e5c4706f/EthernetClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/EthernetClient.cpp

${OBJECTDIR}/_ext/e5c4706f/EthernetServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/EthernetServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e5c4706f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e5c4706f/EthernetServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/EthernetServer.cpp

${OBJECTDIR}/_ext/e5c4706f/EthernetUdp.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/EthernetUdp.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e5c4706f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e5c4706f/EthernetUdp.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/EthernetUdp.cpp

${OBJECTDIR}/_ext/f6bfb9a0/BarometricPressureWebServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/BarometricPressureWebServer/BarometricPressureWebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f6bfb9a0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f6bfb9a0/BarometricPressureWebServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/BarometricPressureWebServer/BarometricPressureWebServer.ino

${OBJECTDIR}/_ext/b96544c1/ChatServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/ChatServer/ChatServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b96544c1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b96544c1/ChatServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/ChatServer/ChatServer.ino

${OBJECTDIR}/_ext/993dd5dd/DhcpAddressPrinter.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/DhcpAddressPrinter/DhcpAddressPrinter.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/993dd5dd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/993dd5dd/DhcpAddressPrinter.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/DhcpAddressPrinter/DhcpAddressPrinter.ino

${OBJECTDIR}/_ext/eeae3c92/DhcpChatServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/DhcpChatServer/DhcpChatServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/eeae3c92
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/eeae3c92/DhcpChatServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/DhcpChatServer/DhcpChatServer.ino

${OBJECTDIR}/_ext/bffb0247/PachubeClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/PachubeClient/PachubeClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/bffb0247
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bffb0247/PachubeClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/PachubeClient/PachubeClient.ino

${OBJECTDIR}/_ext/a4463d38/PachubeClientString.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/PachubeClientString/PachubeClientString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a4463d38
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a4463d38/PachubeClientString.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/PachubeClientString/PachubeClientString.ino

${OBJECTDIR}/_ext/d565dc93/TelnetClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/TelnetClient/TelnetClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d565dc93
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d565dc93/TelnetClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/TelnetClient/TelnetClient.ino

${OBJECTDIR}/_ext/6728ea58/TwitterClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/TwitterClient/TwitterClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6728ea58
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6728ea58/TwitterClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/TwitterClient/TwitterClient.ino

${OBJECTDIR}/_ext/d5ca28f1/UDPSendReceiveString.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/UDPSendReceiveString/UDPSendReceiveString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d5ca28f1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d5ca28f1/UDPSendReceiveString.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/UDPSendReceiveString/UDPSendReceiveString.ino

${OBJECTDIR}/_ext/d363679a/UdpNtpClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/UdpNtpClient/UdpNtpClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d363679a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d363679a/UdpNtpClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/UdpNtpClient/UdpNtpClient.ino

${OBJECTDIR}/_ext/80294b79/WebClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/WebClient/WebClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/80294b79
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/80294b79/WebClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/WebClient/WebClient.ino

${OBJECTDIR}/_ext/e9346cee/WebClientRepeating.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/WebClientRepeating/WebClientRepeating.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e9346cee
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e9346cee/WebClientRepeating.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/WebClientRepeating/WebClientRepeating.ino

${OBJECTDIR}/_ext/9b1886f1/WebServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/WebServer/WebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9b1886f1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9b1886f1/WebServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/examples/WebServer/WebServer.ino

${OBJECTDIR}/_ext/277d5fcc/socket.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/utility/socket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/277d5fcc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/277d5fcc/socket.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/utility/socket.cpp

${OBJECTDIR}/_ext/277d5fcc/w5100.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/utility/w5100.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/277d5fcc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/277d5fcc/w5100.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Ethernet/utility/w5100.cpp

${OBJECTDIR}/_ext/84f15ff8/Firmata.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/Firmata.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/84f15ff8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/84f15ff8/Firmata.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/Firmata.cpp

${OBJECTDIR}/_ext/13ec715/AllInputsFirmata.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/AllInputsFirmata/AllInputsFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/13ec715
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/13ec715/AllInputsFirmata.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/AllInputsFirmata/AllInputsFirmata.ino

${OBJECTDIR}/_ext/99539d11/AnalogFirmata.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/AnalogFirmata/AnalogFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/99539d11
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/99539d11/AnalogFirmata.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/AnalogFirmata/AnalogFirmata.ino

${OBJECTDIR}/_ext/68590fa5/EchoString.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/EchoString/EchoString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/68590fa5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/68590fa5/EchoString.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/EchoString/EchoString.ino

${OBJECTDIR}/_ext/8166a6c5/I2CFirmata.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/I2CFirmata/I2CFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8166a6c5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8166a6c5/I2CFirmata.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/I2CFirmata/I2CFirmata.ino

${OBJECTDIR}/_ext/d9bfaefb/OldStandardFirmata.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/OldStandardFirmata/OldStandardFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d9bfaefb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d9bfaefb/OldStandardFirmata.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/OldStandardFirmata/OldStandardFirmata.ino

${OBJECTDIR}/_ext/b0f69b86/ServoFirmata.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/ServoFirmata/ServoFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b0f69b86
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b0f69b86/ServoFirmata.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/ServoFirmata/ServoFirmata.ino

${OBJECTDIR}/_ext/81e1fbbf/SimpleAnalogFirmata.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/SimpleAnalogFirmata/SimpleAnalogFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/81e1fbbf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/81e1fbbf/SimpleAnalogFirmata.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/SimpleAnalogFirmata/SimpleAnalogFirmata.ino

${OBJECTDIR}/_ext/939ab2f9/SimpleDigitalFirmata.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/SimpleDigitalFirmata/SimpleDigitalFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/939ab2f9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/939ab2f9/SimpleDigitalFirmata.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/SimpleDigitalFirmata/SimpleDigitalFirmata.ino

${OBJECTDIR}/_ext/763bd664/StandardFirmata.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/StandardFirmata/StandardFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/763bd664
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/763bd664/StandardFirmata.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Firmata/examples/StandardFirmata/StandardFirmata.ino

${OBJECTDIR}/_ext/c7c76d69/GSM3CircularBuffer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3CircularBuffer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3CircularBuffer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3CircularBuffer.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileAccessProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileAccessProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileAccessProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileAccessProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileCellManagement.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileCellManagement.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileCellManagement.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileCellManagement.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileClientProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileClientProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileClientProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileClientProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileClientService.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileClientService.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileClientService.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileClientService.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileDataNetworkProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileDataNetworkProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileDataNetworkProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileDataNetworkProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileMockupProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileMockupProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileMockupProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileMockupProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileNetworkProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileNetworkProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileNetworkProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileNetworkProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileNetworkRegistry.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileNetworkRegistry.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileNetworkRegistry.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileNetworkRegistry.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileSMSProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileSMSProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileSMSProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileSMSProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileServerProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileServerProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileServerProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileServerProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileServerService.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileServerService.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileServerService.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileServerService.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3MobileVoiceProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileVoiceProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3MobileVoiceProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3MobileVoiceProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3SMSService.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3SMSService.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3SMSService.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3SMSService.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1AccessProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1AccessProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1AccessProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1AccessProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1BandManagement.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1BandManagement.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1BandManagement.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1BandManagement.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1BaseProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1BaseProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1BaseProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1BaseProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1CellManagement.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1CellManagement.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1CellManagement.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1CellManagement.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ClientProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ClientProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ClientProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ClientProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1DataNetworkProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1DataNetworkProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1DataNetworkProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1DataNetworkProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1DirectModemProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1DirectModemProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1DirectModemProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1DirectModemProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ModemCore.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ModemCore.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ModemCore.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ModemCore.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ModemVerification.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ModemVerification.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ModemVerification.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ModemVerification.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1MultiClientProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1MultiClientProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1MultiClientProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1MultiClientProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1MultiServerProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1MultiServerProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1MultiServerProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1MultiServerProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1PinManagement.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1PinManagement.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1PinManagement.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1PinManagement.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1SMSProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1SMSProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1SMSProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1SMSProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ScanNetworks.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ScanNetworks.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ScanNetworks.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ScanNetworks.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ServerProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ServerProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1ServerProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ServerProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1VoiceProvider.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1VoiceProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3ShieldV1VoiceProvider.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1VoiceProvider.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3SoftSerial.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3SoftSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3SoftSerial.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3SoftSerial.cpp

${OBJECTDIR}/_ext/c7c76d69/GSM3VoiceCallService.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3VoiceCallService.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c76d69
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c76d69/GSM3VoiceCallService.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/GSM3VoiceCallService.cpp

${OBJECTDIR}/_ext/5794808c/GSMPachubeClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GSMPachubeClient/GSMPachubeClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5794808c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5794808c/GSMPachubeClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GSMPachubeClient/GSMPachubeClient.ino

${OBJECTDIR}/_ext/f85733bd/GSMPachubeClientString.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GSMPachubeClientString/GSMPachubeClientString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f85733bd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f85733bd/GSMPachubeClientString.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GSMPachubeClientString/GSMPachubeClientString.ino

${OBJECTDIR}/_ext/75e8e49d/GsmTwitterClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GsmTwitterClient/GsmTwitterClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/75e8e49d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/75e8e49d/GsmTwitterClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GsmTwitterClient/GsmTwitterClient.ino

${OBJECTDIR}/_ext/5ba3303e/GsmWebClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GsmWebClient/GsmWebClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5ba3303e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5ba3303e/GsmWebClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GsmWebClient/GsmWebClient.ino

${OBJECTDIR}/_ext/76926bb6/GsmWebServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GsmWebServer/GsmWebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/76926bb6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/76926bb6/GsmWebServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/GsmWebServer/GsmWebServer.ino

${OBJECTDIR}/_ext/b8881862/MakeVoiceCall.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/MakeVoiceCall/MakeVoiceCall.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b8881862
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b8881862/MakeVoiceCall.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/MakeVoiceCall/MakeVoiceCall.ino

${OBJECTDIR}/_ext/d5aaf376/ReceiveSMS.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/ReceiveSMS/ReceiveSMS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d5aaf376
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d5aaf376/ReceiveSMS.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/ReceiveSMS/ReceiveSMS.ino

${OBJECTDIR}/_ext/1da5570d/ReceiveVoiceCall.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/ReceiveVoiceCall/ReceiveVoiceCall.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1da5570d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1da5570d/ReceiveVoiceCall.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/ReceiveVoiceCall/ReceiveVoiceCall.ino

${OBJECTDIR}/_ext/c11d30b1/SendSMS.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/SendSMS/SendSMS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c11d30b1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c11d30b1/SendSMS.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/SendSMS/SendSMS.ino

${OBJECTDIR}/_ext/3df7432c/BandManagement.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/BandManagement/BandManagement.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3df7432c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3df7432c/BandManagement.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/BandManagement/BandManagement.ino

${OBJECTDIR}/_ext/78d228ef/GsmScanNetworks.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/GsmScanNetworks/GsmScanNetworks.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/78d228ef
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/78d228ef/GsmScanNetworks.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/GsmScanNetworks/GsmScanNetworks.ino

${OBJECTDIR}/_ext/75933e64/PinManagement.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/PinManagement/PinManagement.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/75933e64
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/75933e64/PinManagement.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/PinManagement/PinManagement.ino

${OBJECTDIR}/_ext/5bd13e50/TestGPRS.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestGPRS/TestGPRS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5bd13e50
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5bd13e50/TestGPRS.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestGPRS/TestGPRS.ino

${OBJECTDIR}/_ext/1eb97664/TestModem.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestModem/TestModem.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1eb97664
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1eb97664/TestModem.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestModem/TestModem.ino

${OBJECTDIR}/_ext/d1b165f1/TestWebServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestWebServer/TestWebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d1b165f1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d1b165f1/TestWebServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestWebServer/TestWebServer.ino

${OBJECTDIR}/_ext/e1eb0e12/GSM.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/GSM.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1eb0e12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1eb0e12/GSM.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/GSM.cpp

${OBJECTDIR}/_ext/e1eb0e12/HWSerial.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/HWSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1eb0e12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1eb0e12/HWSerial.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/HWSerial.cpp

${OBJECTDIR}/_ext/e1eb0e12/LOG.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/LOG.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1eb0e12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1eb0e12/LOG.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/LOG.cpp

${OBJECTDIR}/_ext/e1eb0e12/SIM900.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/SIM900.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1eb0e12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1eb0e12/SIM900.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/SIM900.cpp

${OBJECTDIR}/_ext/e1eb0e12/WideTextFinder.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/WideTextFinder.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1eb0e12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1eb0e12/WideTextFinder.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/WideTextFinder.cpp

${OBJECTDIR}/_ext/e1eb0e12/call.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/call.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1eb0e12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1eb0e12/call.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/call.cpp

${OBJECTDIR}/_ext/982052e8/GSM_GPRSLibrary_AT.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_AT/GSM_GPRSLibrary_AT.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/982052e8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/982052e8/GSM_GPRSLibrary_AT.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_AT/GSM_GPRSLibrary_AT.ino

${OBJECTDIR}/_ext/11585ff3/GSM_GPRSLibrary_Call.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Call/GSM_GPRSLibrary_Call.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/11585ff3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/11585ff3/GSM_GPRSLibrary_Call.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Call/GSM_GPRSLibrary_Call.ino

${OBJECTDIR}/_ext/1d59c820/GSM_GPRSLibrary_Client.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Client/GSM_GPRSLibrary_Client.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1d59c820
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1d59c820/GSM_GPRSLibrary_Client.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Client/GSM_GPRSLibrary_Client.ino

${OBJECTDIR}/_ext/6bea2075/GSM_GPRSLibrary_GPS.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_GPS/GSM_GPRSLibrary_GPS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6bea2075
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6bea2075/GSM_GPRSLibrary_GPS.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_GPS/GSM_GPRSLibrary_GPS.ino

${OBJECTDIR}/_ext/6bea4d24/GSM_GPRSLibrary_SMS.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_SMS/GSM_GPRSLibrary_SMS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6bea4d24
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6bea4d24/GSM_GPRSLibrary_SMS.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_SMS/GSM_GPRSLibrary_SMS.ino

${OBJECTDIR}/_ext/38490398/GSM_GPRSLibrary_Server.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Server/GSM_GPRSLibrary_Server.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/38490398
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/38490398/GSM_GPRSLibrary_Server.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Server/GSM_GPRSLibrary_Server.ino

${OBJECTDIR}/_ext/e1eb0e12/gps.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/gps.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1eb0e12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1eb0e12/gps.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/gps.cpp

${OBJECTDIR}/_ext/e1eb0e12/inetGSM.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/inetGSM.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1eb0e12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1eb0e12/inetGSM.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/inetGSM.cpp

${OBJECTDIR}/_ext/e1eb0e12/sms.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/sms.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1eb0e12
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1eb0e12/sms.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSMSHIELD/sms.cpp

${OBJECTDIR}/_ext/eacc631f/GSM_Shield.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/GSM_Shield.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/eacc631f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/eacc631f/GSM_Shield.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/GSM_Shield.cpp

${OBJECTDIR}/_ext/421ea40/GSM_Shield_Call.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Call/GSM_Shield_Call.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/421ea40
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/421ea40/GSM_Shield_Call.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Call/GSM_Shield_Call.pde

${OBJECTDIR}/_ext/9317e240/GSM_Shield_LibVer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_LibVer/GSM_Shield_LibVer.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9317e240
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9317e240/GSM_Shield_LibVer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_LibVer/GSM_Shield_LibVer.pde

${OBJECTDIR}/_ext/b5cfc472/GSM_Shield_Reg.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Reg/GSM_Shield_Reg.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/b5cfc472
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b5cfc472/GSM_Shield_Reg.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Reg/GSM_Shield_Reg.pde

${OBJECTDIR}/_ext/429b474/GSM_Shield_Test.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Test/GSM_Shield_Test.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/429b474
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/429b474/GSM_Shield_Test.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Test/GSM_Shield_Test.pde

${OBJECTDIR}/_ext/d3551a/IRSendRev.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRSendRev/IRSendRev.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/d3551a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d3551a/IRSendRev.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRSendRev/IRSendRev.cpp

${OBJECTDIR}/_ext/53a46c64/revTest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRSendRev/examples/revTest/revTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/53a46c64
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/53a46c64/revTest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRSendRev/examples/revTest/revTest.ino

${OBJECTDIR}/_ext/7bfd118b/sendTest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRSendRev/examples/sendTest/sendTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/7bfd118b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7bfd118b/sendTest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRSendRev/examples/sendTest/sendTest.ino

${OBJECTDIR}/_ext/8fc37b27/IRremote.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/IRremote.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/8fc37b27
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8fc37b27/IRremote.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/IRremote.cpp

${OBJECTDIR}/_ext/f9f75cd8/IRrecord.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRrecord/IRrecord.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f9f75cd8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f9f75cd8/IRrecord.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRrecord/IRrecord.ino

${OBJECTDIR}/_ext/59e153b0/IRrecvDemo.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRrecvDemo/IRrecvDemo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/59e153b0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/59e153b0/IRrecvDemo.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRrecvDemo/IRrecvDemo.ino

${OBJECTDIR}/_ext/59e18fc1/IRrecvDump.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRrecvDump/IRrecvDump.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/59e18fc1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/59e18fc1/IRrecvDump.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRrecvDump/IRrecvDump.ino

${OBJECTDIR}/_ext/8c31652a/IRrelay.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRrelay/IRrelay.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8c31652a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8c31652a/IRrelay.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRrelay/IRrelay.ino

${OBJECTDIR}/_ext/d38a2852/IRsendDemo.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRsendDemo/IRsendDemo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d38a2852
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d38a2852/IRsendDemo.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRsendDemo/IRsendDemo.ino

${OBJECTDIR}/_ext/88a7aad9/IRtest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRtest/IRtest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/88a7aad9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/88a7aad9/IRtest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRtest/IRtest.ino

${OBJECTDIR}/_ext/8c4db079/IRtest2.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRtest2/IRtest2.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8c4db079
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8c4db079/IRtest2.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/IRtest2/IRtest2.ino

${OBJECTDIR}/_ext/81f1cc5a/JVCPanasonicSendDemo.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/JVCPanasonicSendDemo/JVCPanasonicSendDemo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/81f1cc5a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/81f1cc5a/JVCPanasonicSendDemo.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/IRremote/examples/JVCPanasonicSendDemo/JVCPanasonicSendDemo.ino

${OBJECTDIR}/_ext/5a2dd4c2/LiquidCrystal.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/LiquidCrystal.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/5a2dd4c2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5a2dd4c2/LiquidCrystal.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/LiquidCrystal.cpp

${OBJECTDIR}/_ext/3768fa15/Autoscroll.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Autoscroll/Autoscroll.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3768fa15
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3768fa15/Autoscroll.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Autoscroll/Autoscroll.ino

${OBJECTDIR}/_ext/5ba9d6e3/Blink.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Blink/Blink.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5ba9d6e3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5ba9d6e3/Blink.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Blink/Blink.ino

${OBJECTDIR}/_ext/1bc8dcaf/Cursor.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Cursor/Cursor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1bc8dcaf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1bc8dcaf/Cursor.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Cursor/Cursor.ino

${OBJECTDIR}/_ext/c616497f/CustomCharacter.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/CustomCharacter/CustomCharacter.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c616497f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c616497f/CustomCharacter.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/CustomCharacter/CustomCharacter.ino

${OBJECTDIR}/_ext/7dcb7a89/Display.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Display/Display.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/7dcb7a89
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dcb7a89/Display.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Display/Display.ino

${OBJECTDIR}/_ext/bbea3ab9/HelloWorld.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/HelloWorld/HelloWorld.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/bbea3ab9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bbea3ab9/HelloWorld.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/HelloWorld/HelloWorld.ino

${OBJECTDIR}/_ext/3618b026/Scroll.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Scroll/Scroll.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3618b026
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3618b026/Scroll.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Scroll/Scroll.ino

${OBJECTDIR}/_ext/36c588b5/SerialDisplay.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/SerialDisplay/SerialDisplay.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/36c588b5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/36c588b5/SerialDisplay.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/SerialDisplay/SerialDisplay.ino

${OBJECTDIR}/_ext/98141559/TextDirection.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/TextDirection/TextDirection.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/98141559
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/98141559/TextDirection.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/TextDirection/TextDirection.ino

${OBJECTDIR}/_ext/ba85567f/setCursor.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/setCursor/setCursor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ba85567f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ba85567f/setCursor.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/LiquidCrystal/examples/setCursor/setCursor.ino

${OBJECTDIR}/_ext/31295168/Mirf.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/Mirf.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/31295168
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/31295168/Mirf.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/Mirf.cpp

${OBJECTDIR}/_ext/31295168/MirfHardwareSpiDriver.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/MirfHardwareSpiDriver.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/31295168
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/31295168/MirfHardwareSpiDriver.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/MirfHardwareSpiDriver.cpp

${OBJECTDIR}/_ext/31295168/MirfSpiDriver.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/MirfSpiDriver.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/31295168
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/31295168/MirfSpiDriver.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/MirfSpiDriver.cpp

${OBJECTDIR}/_ext/a24ad0b9/ping_client.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/examples/ping_client/ping_client.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/a24ad0b9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a24ad0b9/ping_client.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/examples/ping_client/ping_client.pde

${OBJECTDIR}/_ext/bd3a0c31/ping_server.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/examples/ping_server/ping_server.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/bd3a0c31
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bd3a0c31/ping_server.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/examples/ping_server/ping_server.pde

${OBJECTDIR}/_ext/dec72f2b/ping_server_interupt.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/examples/ping_server_interupt/ping_server_interupt.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/dec72f2b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/dec72f2b/ping_server_interupt.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/examples/ping_server_interupt/ping_server_interupt.pde

${OBJECTDIR}/_ext/f29e880/reg_read.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/examples/reg_read/reg_read.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/f29e880
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f29e880/reg_read.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Mirf/examples/reg_read/reg_read.pde

${OBJECTDIR}/_ext/312b0bee/RF24.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/RF24.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/312b0bee
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/312b0bee/RF24.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/RF24.cpp

${OBJECTDIR}/_ext/fd4b7022/GettingStarted.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/GettingStarted/GettingStarted.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/fd4b7022
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fd4b7022/GettingStarted.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/GettingStarted/GettingStarted.pde

${OBJECTDIR}/_ext/aaec82df/led_remote.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/led_remote/led_remote.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/aaec82df
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/aaec82df/led_remote.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/led_remote/led_remote.pde

${OBJECTDIR}/_ext/57d0b6c/nordic_fob.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/nordic_fob/nordic_fob.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/57d0b6c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/57d0b6c/nordic_fob.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/nordic_fob/nordic_fob.pde

${OBJECTDIR}/_ext/f3589271/pingpair.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair/pingpair.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/f3589271
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f3589271/pingpair.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair/pingpair.pde

${OBJECTDIR}/_ext/9724a7ab/pingpair_dyn.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_dyn/pingpair_dyn.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9724a7ab
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9724a7ab/pingpair_dyn.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_dyn/pingpair_dyn.pde

${OBJECTDIR}/_ext/9724b99a/pingpair_irq.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_irq/pingpair_irq.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9724b99a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9724b99a/pingpair_irq.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_irq/pingpair_irq.pde

${OBJECTDIR}/_ext/610d6887/main.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_maple/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/610d6887
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/610d6887/main.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_maple/main.cpp

${OBJECTDIR}/_ext/610d6887/pingpair_maple.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_maple/pingpair_maple.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/610d6887
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/610d6887/pingpair_maple.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_maple/pingpair_maple.pde

${OBJECTDIR}/_ext/703afe8a/pingpair_pl.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_pl/pingpair_pl.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/703afe8a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/703afe8a/pingpair_pl.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_pl/pingpair_pl.pde

${OBJECTDIR}/_ext/cb72a610/pingpair_sleepy.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_sleepy/pingpair_sleepy.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/cb72a610
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cb72a610/pingpair_sleepy.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/pingpair_sleepy/pingpair_sleepy.pde

${OBJECTDIR}/_ext/70bef197/scanner.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/scanner/output/scanner.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/70bef197
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/70bef197/scanner.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/scanner/output/scanner.cpp

${OBJECTDIR}/_ext/ac1f4639/scanner.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/scanner/scanner.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/ac1f4639
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ac1f4639/scanner.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/scanner/scanner.pde

${OBJECTDIR}/_ext/5b4cc5e9/starping.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/starping/starping.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/5b4cc5e9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5b4cc5e9/starping.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24/examples/starping/starping.pde

${OBJECTDIR}/_ext/1ae2c9e2/RF24.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/RF24.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1ae2c9e2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1ae2c9e2/RF24.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/RF24.cpp

${OBJECTDIR}/_ext/98e59216/GettingStarted.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/GettingStarted/GettingStarted.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/98e59216
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/98e59216/GettingStarted.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/GettingStarted/GettingStarted.pde

${OBJECTDIR}/_ext/822dbed3/led_remote.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/led_remote/led_remote.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/822dbed3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/822dbed3/led_remote.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/led_remote/led_remote.pde

${OBJECTDIR}/_ext/878572d3/nRF24_Arduino_as_hub.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_Arduino_as_hub/nRF24_Arduino_as_hub.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/878572d3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/878572d3/nRF24_Arduino_as_hub.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_Arduino_as_hub/nRF24_Arduino_as_hub.ino

${OBJECTDIR}/_ext/2ac643ef/nRF24_Serial_Chat.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_Serial_Chat/nRF24_Serial_Chat.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2ac643ef
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ac643ef/nRF24_Serial_Chat.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_Serial_Chat/nRF24_Serial_Chat.ino

${OBJECTDIR}/_ext/55b7100d/nRF24_sendto_hub.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_sendto_hub/nRF24_sendto_hub.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/55b7100d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/55b7100d/nRF24_sendto_hub.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_sendto_hub/nRF24_sendto_hub.ino

${OBJECTDIR}/_ext/dcbe4760/nordic_fob.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nordic_fob/nordic_fob.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/dcbe4760
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/dcbe4760/nordic_fob.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nordic_fob/nordic_fob.pde

${OBJECTDIR}/_ext/4de03b65/pingpair.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair/pingpair.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4de03b65
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4de03b65/pingpair.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair/pingpair.ino

${OBJECTDIR}/_ext/a306b69f/pingpair_dyn.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_dyn/pingpair_dyn.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/a306b69f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a306b69f/pingpair_dyn.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_dyn/pingpair_dyn.pde

${OBJECTDIR}/_ext/a306c88e/pingpair_irq.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_irq/pingpair_irq.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/a306c88e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a306c88e/pingpair_irq.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_irq/pingpair_irq.pde

${OBJECTDIR}/_ext/fca78a7b/main.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_maple/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fca78a7b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fca78a7b/main.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_maple/main.cpp

${OBJECTDIR}/_ext/fca78a7b/pingpair_maple.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_maple/pingpair_maple.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/fca78a7b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fca78a7b/pingpair_maple.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_maple/pingpair_maple.pde

${OBJECTDIR}/_ext/48a24219/pingpair_multi_dyn.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_multi_dyn/pingpair_multi_dyn.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/48a24219
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48a24219/pingpair_multi_dyn.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_multi_dyn/pingpair_multi_dyn.pde

${OBJECTDIR}/_ext/81214116/pingpair_pl.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_pl/pingpair_pl.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/81214116
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/81214116/pingpair_pl.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_pl/pingpair_pl.pde

${OBJECTDIR}/_ext/a31cc29c/pingpair_sleepy.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_sleepy/pingpair_sleepy.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/a31cc29c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a31cc29c/pingpair_sleepy.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_sleepy/pingpair_sleepy.pde

${OBJECTDIR}/_ext/c59138b/scanner.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/scanner/output/scanner.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c59138b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c59138b/scanner.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/scanner/output/scanner.cpp

${OBJECTDIR}/_ext/9644aec5/scanner.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/scanner/scanner.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9644aec5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9644aec5/scanner.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/scanner/scanner.pde

${OBJECTDIR}/_ext/b5d46edd/starping.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/starping/starping.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/b5d46edd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b5d46edd/starping.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/starping/starping.pde

${OBJECTDIR}/_ext/4f5d5157/RF24.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/RF24.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/4f5d5157
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4f5d5157/RF24.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/RF24.cpp

${OBJECTDIR}/_ext/4f5d5157/bcm2835.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/bcm2835.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/4f5d5157
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4f5d5157/bcm2835.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/bcm2835.c

${OBJECTDIR}/_ext/9710be01/pingtest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/pingtest.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9710be01
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9710be01/pingtest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/pingtest.cpp

${OBJECTDIR}/_ext/9710be01/pongtest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/pongtest.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9710be01
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9710be01/pongtest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/pongtest.cpp

${OBJECTDIR}/_ext/9710be01/rpi-hub.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/rpi-hub.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9710be01
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9710be01/rpi-hub.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/rpi-hub.cpp

${OBJECTDIR}/_ext/9710be01/scanner.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/scanner.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9710be01
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9710be01/scanner.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/scanner.cpp

${OBJECTDIR}/_ext/1df54c58/RF24.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/RF24.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1df54c58
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1df54c58/RF24.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/RF24.cpp

${OBJECTDIR}/_ext/1df54c58/compatibility.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/compatibility.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/1df54c58
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1df54c58/compatibility.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/compatibility.c

${OBJECTDIR}/_ext/388c9420/pingtest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/pingtest.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/388c9420
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/388c9420/pingtest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/pingtest.cpp

${OBJECTDIR}/_ext/388c9420/pongtest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/pongtest.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/388c9420
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/388c9420/pongtest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/pongtest.cpp

${OBJECTDIR}/_ext/388c9420/rpi-hub.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/rpi-hub.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/388c9420
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/388c9420/rpi-hub.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/rpi-hub.cpp

${OBJECTDIR}/_ext/388c9420/scanner.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/scanner.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/388c9420
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/388c9420/scanner.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/scanner.cpp

${OBJECTDIR}/_ext/388c9420/sendto_hub.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/sendto_hub.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/388c9420
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/388c9420/sendto_hub.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/sendto_hub.cpp

${OBJECTDIR}/_ext/1df54c58/gpio.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/gpio.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1df54c58
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1df54c58/gpio.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/gpio.cpp

${OBJECTDIR}/_ext/1df54c58/spi.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/spi.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1df54c58
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1df54c58/spi.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/spi.cpp

${OBJECTDIR}/_ext/93cfbb9e/EEPROM_AT24C32.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/EEPROM_AT24C32.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/93cfbb9e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/93cfbb9e/EEPROM_AT24C32.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/EEPROM_AT24C32.cpp

${OBJECTDIR}/_ext/93cfbb9e/RTClib.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/RTClib.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/93cfbb9e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/93cfbb9e/RTClib.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/RTClib.cpp

${OBJECTDIR}/_ext/d74dbdd8/datecalc.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/datecalc/datecalc.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d74dbdd8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d74dbdd8/datecalc.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/datecalc/datecalc.ino

${OBJECTDIR}/_ext/1aeec4cd/ds1307.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307/ds1307.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1aeec4cd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1aeec4cd/ds1307.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307/ds1307.ino

${OBJECTDIR}/_ext/e63b2429/ds1307SqwPin.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307SqwPin/ds1307SqwPin.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e63b2429
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e63b2429/ds1307SqwPin.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307SqwPin/ds1307SqwPin.ino

${OBJECTDIR}/_ext/63c2a8a9/ds1307nvram.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307nvram/ds1307nvram.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/63c2a8a9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/63c2a8a9/ds1307nvram.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307nvram/ds1307nvram.ino

${OBJECTDIR}/_ext/589d5482/softrtc.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/softrtc/softrtc.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/589d5482
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/589d5482/softrtc.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/softrtc/softrtc.ino

${OBJECTDIR}/_ext/fe1c82d0/Adafruit_GFX.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Adafruit_GFX.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Adafruit_GFX.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Adafruit_GFX.cpp

${OBJECTDIR}/_ext/fe1c82d0/ArduinoRobot.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/ArduinoRobot.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/ArduinoRobot.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/ArduinoRobot.cpp

${OBJECTDIR}/_ext/fe1c82d0/Arduino_LCD.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Arduino_LCD.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Arduino_LCD.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Arduino_LCD.cpp

${OBJECTDIR}/_ext/fe1c82d0/Compass.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Compass.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Compass.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Compass.cpp

${OBJECTDIR}/_ext/fe1c82d0/EEPROM_I2C.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/EEPROM_I2C.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/EEPROM_I2C.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/EEPROM_I2C.cpp

${OBJECTDIR}/_ext/fe1c82d0/EasyTransfer2.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/EasyTransfer2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/EasyTransfer2.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/EasyTransfer2.cpp

${OBJECTDIR}/_ext/fe1c82d0/Fat16.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Fat16.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Fat16.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Fat16.cpp

${OBJECTDIR}/_ext/fe1c82d0/Melody.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Melody.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Melody.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Melody.cpp

${OBJECTDIR}/_ext/fe1c82d0/Motors.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Motors.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Motors.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Motors.cpp

${OBJECTDIR}/_ext/fe1c82d0/Multiplexer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Multiplexer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Multiplexer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Multiplexer.cpp

${OBJECTDIR}/_ext/fe1c82d0/RobotSdCard.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/RobotSdCard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/RobotSdCard.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/RobotSdCard.cpp

${OBJECTDIR}/_ext/fe1c82d0/SPI.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/SPI.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/SPI.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/SPI.cpp

${OBJECTDIR}/_ext/fe1c82d0/SdCard.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/SdCard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/SdCard.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/SdCard.cpp

${OBJECTDIR}/_ext/fe1c82d0/Sensors.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Sensors.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Sensors.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Sensors.cpp

${OBJECTDIR}/_ext/fe1c82d0/Squawk.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Squawk.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Squawk.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Squawk.cpp

${OBJECTDIR}/_ext/fe1c82d0/SquawkSD.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/SquawkSD.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/SquawkSD.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/SquawkSD.cpp

${OBJECTDIR}/_ext/fe1c82d0/Wire.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Wire.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/Wire.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/Wire.cpp

${OBJECTDIR}/_ext/fe1c82d0/communication.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/communication.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/communication.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/communication.cpp

${OBJECTDIR}/_ext/e36f033a/R01_Logo.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R01_Logo/R01_Logo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e36f033a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e36f033a/R01_Logo.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R01_Logo/R01_Logo.ino

${OBJECTDIR}/_ext/b14b948e/R02_Line_Follow.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R02_Line_Follow/R02_Line_Follow.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b14b948e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b14b948e/R02_Line_Follow.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R02_Line_Follow/R02_Line_Follow.ino

${OBJECTDIR}/_ext/f06bd6b5/R03_Disco_Bot.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R03_Disco_Bot/R03_Disco_Bot.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f06bd6b5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f06bd6b5/R03_Disco_Bot.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R03_Disco_Bot/R03_Disco_Bot.ino

${OBJECTDIR}/_ext/94b42e26/R04_Compass.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R04_Compass/R04_Compass.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/94b42e26
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/94b42e26/R04_Compass.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R04_Compass/R04_Compass.ino

${OBJECTDIR}/_ext/5e176b34/R05_Inputs.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R05_Inputs/R05_Inputs.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5e176b34
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5e176b34/R05_Inputs.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R05_Inputs/R05_Inputs.ino

${OBJECTDIR}/_ext/2b24967c/R06_Wheel_Calibration.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R06_Wheel_Calibration/R06_Wheel_Calibration.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2b24967c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2b24967c/R06_Wheel_Calibration.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R06_Wheel_Calibration/R06_Wheel_Calibration.ino

${OBJECTDIR}/_ext/44ccaf5b/R07_Runaway_Robot.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R07_Runaway_Robot/R07_Runaway_Robot.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/44ccaf5b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/44ccaf5b/R07_Runaway_Robot.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R07_Runaway_Robot/R07_Runaway_Robot.ino

${OBJECTDIR}/_ext/ba99de2c/R08_Remote_Control.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R08_Remote_Control/R08_Remote_Control.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ba99de2c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ba99de2c/R08_Remote_Control.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R08_Remote_Control/R08_Remote_Control.ino

${OBJECTDIR}/_ext/1f57dbe0/R09_Picture_Browser.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R09_Picture_Browser/R09_Picture_Browser.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1f57dbe0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1f57dbe0/R09_Picture_Browser.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R09_Picture_Browser/R09_Picture_Browser.ino

${OBJECTDIR}/_ext/f9d3dd84/R10_Rescue.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R10_Rescue/R10_Rescue.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f9d3dd84
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f9d3dd84/R10_Rescue.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R10_Rescue/R10_Rescue.ino

${OBJECTDIR}/_ext/813b5008/R11_Hello_User.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R11_Hello_User/R11_Hello_User.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/813b5008
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/813b5008/R11_Hello_User.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R11_Hello_User/R11_Hello_User.ino

${OBJECTDIR}/_ext/a26cf51d/AllIOPorts.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/AllIOPorts/AllIOPorts.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a26cf51d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a26cf51d/AllIOPorts.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/AllIOPorts/AllIOPorts.ino

${OBJECTDIR}/_ext/e1228900/Beep.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Beep/Beep.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1228900
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1228900/Beep.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Beep/Beep.ino

${OBJECTDIR}/_ext/d6f44a77/CleanEEPROM.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/CleanEEPROM/CleanEEPROM.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d6f44a77
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d6f44a77/CleanEEPROM.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/CleanEEPROM/CleanEEPROM.ino

${OBJECTDIR}/_ext/784dbf00/Compass.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Compass/Compass.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/784dbf00
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/784dbf00/Compass.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Compass/Compass.ino

${OBJECTDIR}/_ext/81cbb4be/IRArray.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/IRArray/IRArray.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/81cbb4be
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/81cbb4be/IRArray.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/IRArray/IRArray.ino

${OBJECTDIR}/_ext/d4df5d35/LCDDebugPrint.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDDebugPrint/LCDDebugPrint.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d4df5d35
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d4df5d35/LCDDebugPrint.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDDebugPrint/LCDDebugPrint.ino

${OBJECTDIR}/_ext/d91078b2/LCDPrint.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDPrint/LCDPrint.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d91078b2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d91078b2/LCDPrint.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDPrint/LCDPrint.ino

${OBJECTDIR}/_ext/8d514531/LCDWriteText.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDWriteText/LCDWriteText.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8d514531
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8d514531/LCDWriteText.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDWriteText/LCDWriteText.ino

${OBJECTDIR}/_ext/efaa3a79/LineFollowWithPause.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LineFollowWithPause/LineFollowWithPause.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/efaa3a79
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/efaa3a79/LineFollowWithPause.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LineFollowWithPause/LineFollowWithPause.ino

${OBJECTDIR}/_ext/356ccf42/Melody.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Melody/Melody.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/356ccf42
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/356ccf42/Melody.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Melody/Melody.ino

${OBJECTDIR}/_ext/d7fe6d15/MotorTest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/MotorTest/MotorTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d7fe6d15
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d7fe6d15/MotorTest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/MotorTest/MotorTest.ino

${OBJECTDIR}/_ext/4211561/SpeedByPotentiometer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/SpeedByPotentiometer/SpeedByPotentiometer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4211561
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4211561/SpeedByPotentiometer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/SpeedByPotentiometer/SpeedByPotentiometer.ino

${OBJECTDIR}/_ext/bd296e81/TurnTest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/TurnTest/TurnTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/bd296e81
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bd296e81/TurnTest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/TurnTest/TurnTest.ino

${OBJECTDIR}/_ext/520c0fcb/keyboardTest.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/keyboardTest/keyboardTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/520c0fcb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/520c0fcb/keyboardTest.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/keyboardTest/keyboardTest.ino

${OBJECTDIR}/_ext/fe1c82d0/glcdfont.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/glcdfont.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/glcdfont.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/glcdfont.c

${OBJECTDIR}/_ext/fe1c82d0/helper.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/helper.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/helper.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/helper.cpp

${OBJECTDIR}/_ext/fe1c82d0/information.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/information.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/information.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/information.cpp

${OBJECTDIR}/_ext/fe1c82d0/keyboard.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/keyboard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/keyboard.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/keyboard.cpp

${OBJECTDIR}/_ext/fe1c82d0/lcd.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/lcd.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe1c82d0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe1c82d0/lcd.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/lcd.cpp

${OBJECTDIR}/_ext/6591812d/RobotTextManager.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/utility/RobotTextManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6591812d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6591812d/RobotTextManager.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/utility/RobotTextManager.cpp

${OBJECTDIR}/_ext/6591812d/VirtualKeyboard.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/utility/VirtualKeyboard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6591812d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6591812d/VirtualKeyboard.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/utility/VirtualKeyboard.cpp

${OBJECTDIR}/_ext/6591812d/twi.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/utility/twi.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/6591812d
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6591812d/twi.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Control/utility/twi.c

${OBJECTDIR}/_ext/f51816a8/ArduinoRobotMotorBoard.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/ArduinoRobotMotorBoard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f51816a8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f51816a8/ArduinoRobotMotorBoard.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/ArduinoRobotMotorBoard.cpp

${OBJECTDIR}/_ext/f51816a8/EasyTransfer2.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/EasyTransfer2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f51816a8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f51816a8/EasyTransfer2.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/EasyTransfer2.cpp

${OBJECTDIR}/_ext/f51816a8/Multiplexer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/Multiplexer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f51816a8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f51816a8/Multiplexer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/Multiplexer.cpp

${OBJECTDIR}/_ext/943cdda/Robot_IR_Array_Test.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/examples/Robot_IR_Array_Test/Robot_IR_Array_Test.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/943cdda
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/943cdda/Robot_IR_Array_Test.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/examples/Robot_IR_Array_Test/Robot_IR_Array_Test.ino

${OBJECTDIR}/_ext/bdbc62dd/Robot_Motor_Core.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/examples/Robot_Motor_Core/Robot_Motor_Core.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/bdbc62dd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bdbc62dd/Robot_Motor_Core.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/examples/Robot_Motor_Core/Robot_Motor_Core.ino

${OBJECTDIR}/_ext/f51816a8/lineFollow.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/lineFollow.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f51816a8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f51816a8/lineFollow.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Robot_Motor/lineFollow.cpp

${OBJECTDIR}/_ext/614880c9/File.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/File.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/614880c9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/614880c9/File.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/File.cpp

${OBJECTDIR}/_ext/614880c9/SD.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/SD.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/614880c9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/614880c9/SD.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/SD.cpp

${OBJECTDIR}/_ext/78137b3e/CardInfo.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/CardInfo/CardInfo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/78137b3e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/78137b3e/CardInfo.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/CardInfo/CardInfo.ino

${OBJECTDIR}/_ext/2242d51a/Datalogger.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/Datalogger/Datalogger.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2242d51a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2242d51a/Datalogger.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/Datalogger/Datalogger.ino

${OBJECTDIR}/_ext/fa10b8f0/DumpFile.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/DumpFile/DumpFile.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fa10b8f0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fa10b8f0/DumpFile.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/DumpFile/DumpFile.ino

${OBJECTDIR}/_ext/2995c717/Files.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/Files/Files.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2995c717
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2995c717/Files.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/Files/Files.ino

${OBJECTDIR}/_ext/57605889/ReadWrite.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/ReadWrite/ReadWrite.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/57605889
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/57605889/ReadWrite.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/ReadWrite/ReadWrite.ino

${OBJECTDIR}/_ext/da255959/listfiles.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/listfiles/listfiles.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/da255959
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/da255959/listfiles.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/examples/listfiles/listfiles.ino

${OBJECTDIR}/_ext/46007626/Sd2Card.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/utility/Sd2Card.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/46007626
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/46007626/Sd2Card.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/utility/Sd2Card.cpp

${OBJECTDIR}/_ext/46007626/SdFile.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/utility/SdFile.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/46007626
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/46007626/SdFile.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/utility/SdFile.cpp

${OBJECTDIR}/_ext/46007626/SdVolume.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/utility/SdVolume.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/46007626
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/46007626/SdVolume.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SD/utility/SdVolume.cpp

${OBJECTDIR}/_ext/c7c79a14/SPI.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SPI/SPI.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c79a14
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c79a14/SPI.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SPI/SPI.cpp

${OBJECTDIR}/_ext/3515a2d6/BarometricPressureSensor.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SPI/examples/BarometricPressureSensor/BarometricPressureSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3515a2d6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3515a2d6/BarometricPressureSensor.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SPI/examples/BarometricPressureSensor/BarometricPressureSensor.ino

${OBJECTDIR}/_ext/f98d8e24/BarometricPressureSensor.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SPI/examples/BarometricPressureSensor/BarometricPressureSensor/BarometricPressureSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f98d8e24
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f98d8e24/BarometricPressureSensor.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SPI/examples/BarometricPressureSensor/BarometricPressureSensor/BarometricPressureSensor.ino

${OBJECTDIR}/_ext/4fbf89f5/DigitalPotControl.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SPI/examples/DigitalPotControl/DigitalPotControl.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4fbf89f5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4fbf89f5/DigitalPotControl.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SPI/examples/DigitalPotControl/DigitalPotControl.ino

${OBJECTDIR}/_ext/f4539981/Servo.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Servo/Servo.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f4539981
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f4539981/Servo.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Servo/Servo.cpp

${OBJECTDIR}/_ext/c27ca48e/Knob.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Servo/examples/Knob/Knob.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c27ca48e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c27ca48e/Knob.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Servo/examples/Knob/Knob.ino

${OBJECTDIR}/_ext/8d8c9bd4/Sweep.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Servo/examples/Sweep/Sweep.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8d8c9bd4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8d8c9bd4/Sweep.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Servo/examples/Sweep/Sweep.ino

${OBJECTDIR}/_ext/86678113/SoftwareSerial.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SoftwareSerial/SoftwareSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/86678113
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/86678113/SoftwareSerial.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SoftwareSerial/SoftwareSerial.cpp

${OBJECTDIR}/_ext/91710985/SoftwareSerialExample.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SoftwareSerial/examples/SoftwareSerialExample/SoftwareSerialExample.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/91710985
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/91710985/SoftwareSerialExample.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SoftwareSerial/examples/SoftwareSerialExample/SoftwareSerialExample.ino

${OBJECTDIR}/_ext/b65d36e0/TwoPortReceive.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SoftwareSerial/examples/TwoPortReceive/TwoPortReceive.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b65d36e0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b65d36e0/TwoPortReceive.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/SoftwareSerial/examples/TwoPortReceive/TwoPortReceive.ino

${OBJECTDIR}/_ext/46b21339/Stepper.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/Stepper.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/46b21339
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/46b21339/Stepper.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/Stepper.cpp

${OBJECTDIR}/_ext/d236cbb/MotorKnob.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/examples/MotorKnob/MotorKnob.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d236cbb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d236cbb/MotorKnob.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/examples/MotorKnob/MotorKnob.ino

${OBJECTDIR}/_ext/16e695b1/stepper_oneRevolution.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/examples/stepper_oneRevolution/stepper_oneRevolution.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/16e695b1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/16e695b1/stepper_oneRevolution.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/examples/stepper_oneRevolution/stepper_oneRevolution.ino

${OBJECTDIR}/_ext/533b2487/stepper_oneStepAtATime.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/examples/stepper_oneStepAtATime/stepper_oneStepAtATime.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/533b2487
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/533b2487/stepper_oneStepAtATime.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/examples/stepper_oneStepAtATime/stepper_oneStepAtATime.ino

${OBJECTDIR}/_ext/e5212774/stepper_speedControl.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/examples/stepper_speedControl/stepper_speedControl.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e5212774
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e5212774/stepper_speedControl.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Stepper/examples/stepper_speedControl/stepper_speedControl.ino

${OBJECTDIR}/_ext/26704cc/streaming_example.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Streaming/Examples/streaming_example/streaming_example.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/26704cc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/26704cc/streaming_example.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Streaming/Examples/streaming_example/streaming_example.pde

${OBJECTDIR}/_ext/c7c79caa/TFT.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/TFT.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7c79caa
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7c79caa/TFT.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/TFT.cpp

${OBJECTDIR}/_ext/3a15cc34/TFTBitmapLogo.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTBitmapLogo/TFTBitmapLogo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3a15cc34
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3a15cc34/TFTBitmapLogo.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTBitmapLogo/TFTBitmapLogo.ino

${OBJECTDIR}/_ext/d3221457/TFTColorPicker.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTColorPicker/TFTColorPicker.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d3221457
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d3221457/TFTColorPicker.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTColorPicker/TFTColorPicker.ino

${OBJECTDIR}/_ext/485e795/TFTDisplayText.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTDisplayText/TFTDisplayText.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/485e795
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/485e795/TFTDisplayText.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTDisplayText/TFTDisplayText.ino

${OBJECTDIR}/_ext/99f4f9ff/TFTEtchASketch.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTEtchASketch/TFTEtchASketch.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/99f4f9ff
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/99f4f9ff/TFTEtchASketch.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTEtchASketch/TFTEtchASketch.ino

${OBJECTDIR}/_ext/eeb8e454/TFTGraph.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTGraph/TFTGraph.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/eeb8e454
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/eeb8e454/TFTGraph.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTGraph/TFTGraph.ino

${OBJECTDIR}/_ext/cde8fc32/TFTPong.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTPong/TFTPong.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/cde8fc32
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cde8fc32/TFTPong.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTPong/TFTPong.ino

${OBJECTDIR}/_ext/e83038a4/EsploraTFTBitmapLogo.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTBitmapLogo/EsploraTFTBitmapLogo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e83038a4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e83038a4/EsploraTFTBitmapLogo.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTBitmapLogo/EsploraTFTBitmapLogo.ino

${OBJECTDIR}/_ext/e85535e7/EsploraTFTColorPicker.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTColorPicker/EsploraTFTColorPicker.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e85535e7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e85535e7/EsploraTFTColorPicker.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTColorPicker/EsploraTFTColorPicker.ino

${OBJECTDIR}/_ext/af281b8f/EsploraTFTEtchASketch.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTEtchASketch/EsploraTFTEtchASketch.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/af281b8f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/af281b8f/EsploraTFTEtchASketch.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTEtchASketch/EsploraTFTEtchASketch.ino

${OBJECTDIR}/_ext/2b0871e4/EsploraTFTGraph.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTGraph/EsploraTFTGraph.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2b0871e4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2b0871e4/EsploraTFTGraph.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTGraph/EsploraTFTGraph.ino

${OBJECTDIR}/_ext/b1959376/EsploraTFTHorizion.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTHorizion/EsploraTFTHorizion.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b1959376
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b1959376/EsploraTFTHorizion.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTHorizion/EsploraTFTHorizion.ino

${OBJECTDIR}/_ext/9a97ca2/EsploraTFTPong.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTPong/EsploraTFTPong.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9a97ca2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9a97ca2/EsploraTFTPong.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTPong/EsploraTFTPong.ino

${OBJECTDIR}/_ext/9ab287e/EsploraTFTTemp.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTTemp/EsploraTFTTemp.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9ab287e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9ab287e/EsploraTFTTemp.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTTemp/EsploraTFTTemp.ino

${OBJECTDIR}/_ext/455a2107/Adafruit_GFX.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/utility/Adafruit_GFX.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/455a2107
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/455a2107/Adafruit_GFX.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/utility/Adafruit_GFX.cpp

${OBJECTDIR}/_ext/455a2107/Adafruit_ST7735.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/utility/Adafruit_ST7735.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/455a2107
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/455a2107/Adafruit_ST7735.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/utility/Adafruit_ST7735.cpp

${OBJECTDIR}/_ext/455a2107/glcdfont.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/utility/glcdfont.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/455a2107
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/455a2107/glcdfont.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/TFT/utility/glcdfont.c

${OBJECTDIR}/_ext/4f2050ff/Web_AjaxBuzzer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxBuzzer/Web_AjaxBuzzer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4f2050ff
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4f2050ff/Web_AjaxBuzzer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxBuzzer/Web_AjaxBuzzer.ino

${OBJECTDIR}/_ext/a3c39aee/Web_AjaxRGB.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxRGB/Web_AjaxRGB.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a3c39aee
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a3c39aee/Web_AjaxRGB.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxRGB/Web_AjaxRGB.ino

${OBJECTDIR}/_ext/94ed6b13/Web_AjaxRGB_mobile.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxRGB_mobile/Web_AjaxRGB_mobile.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/94ed6b13
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/94ed6b13/Web_AjaxRGB_mobile.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxRGB_mobile/Web_AjaxRGB_mobile.ino

${OBJECTDIR}/_ext/197e9ef7/Web_Authentication.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Authentication/Web_Authentication.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/197e9ef7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/197e9ef7/Web_Authentication.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Authentication/Web_Authentication.ino

${OBJECTDIR}/_ext/7a3a23f/Web_Buzzer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Buzzer/Web_Buzzer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/7a3a23f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7a3a23f/Web_Buzzer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Buzzer/Web_Buzzer.ino

${OBJECTDIR}/_ext/dc507d22/Web_Demo.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Demo/Web_Demo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/dc507d22
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/dc507d22/Web_Demo.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Demo/Web_Demo.ino

${OBJECTDIR}/_ext/5ecc99df/Web_HelloWorld.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_HelloWorld/Web_HelloWorld.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5ecc99df
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5ecc99df/Web_HelloWorld.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_HelloWorld/Web_HelloWorld.ino

${OBJECTDIR}/_ext/ae0911fc/Web_Image.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Image/Web_Image.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ae0911fc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ae0911fc/Web_Image.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Image/Web_Image.ino

${OBJECTDIR}/_ext/3e61d5c/System.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Net_Setup/System.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/3e61d5c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3e61d5c/System.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Net_Setup/System.cpp

${OBJECTDIR}/_ext/3e61d5c/Web_Net_Setup.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Net_Setup/Web_Net_Setup.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/3e61d5c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3e61d5c/Web_Net_Setup.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Net_Setup/Web_Net_Setup.pde

${OBJECTDIR}/_ext/ae6682a8/Web_Parms.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Parms/Web_Parms.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ae6682a8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ae6682a8/Web_Parms.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Webduino/examples/Web_Parms/Web_Parms.ino

${OBJECTDIR}/_ext/312dd7cd/WiFi.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/WiFi.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/312dd7cd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/312dd7cd/WiFi.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/WiFi.cpp

${OBJECTDIR}/_ext/312dd7cd/WiFiClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/WiFiClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/312dd7cd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/312dd7cd/WiFiClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/WiFiClient.cpp

${OBJECTDIR}/_ext/312dd7cd/WiFiServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/WiFiServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/312dd7cd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/312dd7cd/WiFiServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/WiFiServer.cpp

${OBJECTDIR}/_ext/312dd7cd/WiFiUdp.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/WiFiUdp.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/312dd7cd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/312dd7cd/WiFiUdp.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/WiFiUdp.cpp

${OBJECTDIR}/_ext/f25c664a/ConnectNoEncryption.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/ConnectNoEncryption/ConnectNoEncryption.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f25c664a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f25c664a/ConnectNoEncryption.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/ConnectNoEncryption/ConnectNoEncryption.ino

${OBJECTDIR}/_ext/c476d6/ConnectWithWEP.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/ConnectWithWEP/ConnectWithWEP.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c476d6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c476d6/ConnectWithWEP.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/ConnectWithWEP/ConnectWithWEP.ino

${OBJECTDIR}/_ext/c4781c/ConnectWithWPA.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/ConnectWithWPA/ConnectWithWPA.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c4781c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c4781c/ConnectWithWPA.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/ConnectWithWPA/ConnectWithWPA.ino

${OBJECTDIR}/_ext/23ce4506/ScanNetworks.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/ScanNetworks/ScanNetworks.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/23ce4506
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/23ce4506/ScanNetworks.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/ScanNetworks/ScanNetworks.ino

${OBJECTDIR}/_ext/e6a27f16/SimpleWebServerWiFi.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/SimpleWebServerWiFi/SimpleWebServerWiFi.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e6a27f16
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e6a27f16/SimpleWebServerWiFi.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/SimpleWebServerWiFi/SimpleWebServerWiFi.ino

${OBJECTDIR}/_ext/88674834/WiFiChatServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiChatServer/WiFiChatServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/88674834
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/88674834/WiFiChatServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiChatServer/WiFiChatServer.ino

${OBJECTDIR}/_ext/7b4a65f4/WiFiPachubeClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiPachubeClient/WiFiPachubeClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/7b4a65f4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7b4a65f4/WiFiPachubeClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiPachubeClient/WiFiPachubeClient.ino

${OBJECTDIR}/_ext/30d56b25/WiFiPachubeClientString.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiPachubeClientString/WiFiPachubeClientString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/30d56b25
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/30d56b25/WiFiPachubeClientString.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiPachubeClientString/WiFiPachubeClientString.ino

${OBJECTDIR}/_ext/22784e05/WiFiTwitterClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiTwitterClient/WiFiTwitterClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/22784e05
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/22784e05/WiFiTwitterClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiTwitterClient/WiFiTwitterClient.ino

${OBJECTDIR}/_ext/e9f25a4d/WiFiUdpNtpClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiUdpNtpClient/WiFiUdpNtpClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e9f25a4d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e9f25a4d/WiFiUdpNtpClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiUdpNtpClient/WiFiUdpNtpClient.ino

${OBJECTDIR}/_ext/22a934a4/WiFiUdpSendReceiveString.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiUdpSendReceiveString/WiFiUdpSendReceiveString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/22a934a4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/22a934a4/WiFiUdpSendReceiveString.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiUdpSendReceiveString/WiFiUdpSendReceiveString.ino

${OBJECTDIR}/_ext/e9ef8da6/WiFiWebClient.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebClient/WiFiWebClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e9ef8da6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e9ef8da6/WiFiWebClient.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebClient/WiFiWebClient.ino

${OBJECTDIR}/_ext/fe414d61/WiFiWebClientRepeating.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebClientRepeating/WiFiWebClientRepeating.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fe414d61
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe414d61/WiFiWebClientRepeating.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebClientRepeating/WiFiWebClientRepeating.ino

${OBJECTDIR}/_ext/4dec91e/WiFiWebServer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebServer/WiFiWebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4dec91e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4dec91e/WiFiWebServer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebServer/WiFiWebServer.ino

${OBJECTDIR}/_ext/f3b0892a/server_drv.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/utility/server_drv.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f3b0892a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f3b0892a/server_drv.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/utility/server_drv.cpp

${OBJECTDIR}/_ext/f3b0892a/socket.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/utility/socket.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/f3b0892a
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f3b0892a/socket.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/utility/socket.c

${OBJECTDIR}/_ext/f3b0892a/spi_drv.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/utility/spi_drv.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f3b0892a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f3b0892a/spi_drv.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/utility/spi_drv.cpp

${OBJECTDIR}/_ext/f3b0892a/wifi_drv.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/utility/wifi_drv.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f3b0892a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f3b0892a/wifi_drv.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/WiFi/utility/wifi_drv.cpp

${OBJECTDIR}/_ext/312ddd1d/Wire.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/Wire.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/312ddd1d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/312ddd1d/Wire.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/Wire.cpp

${OBJECTDIR}/_ext/a78925e2/SFRRanger_reader.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/SFRRanger_reader/SFRRanger_reader.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a78925e2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a78925e2/SFRRanger_reader.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/SFRRanger_reader/SFRRanger_reader.ino

${OBJECTDIR}/_ext/f4c8e6f2/digital_potentiometer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/digital_potentiometer/digital_potentiometer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f4c8e6f2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f4c8e6f2/digital_potentiometer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/digital_potentiometer/digital_potentiometer.ino

${OBJECTDIR}/_ext/b28f5b2c/master_reader.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/master_reader/master_reader.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b28f5b2c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b28f5b2c/master_reader.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/master_reader/master_reader.ino

${OBJECTDIR}/_ext/bbd2a6dc/master_writer.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/master_writer/master_writer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/bbd2a6dc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bbd2a6dc/master_writer.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/master_writer/master_writer.ino

${OBJECTDIR}/_ext/cb3e16eb/slave_receiver.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/slave_receiver/slave_receiver.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/cb3e16eb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cb3e16eb/slave_receiver.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/slave_receiver/slave_receiver.ino

${OBJECTDIR}/_ext/34d15631/slave_sender.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/slave_sender/slave_sender.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/34d15631
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34d15631/slave_sender.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/examples/slave_sender/slave_sender.ino

${OBJECTDIR}/_ext/9f3e3e7a/twi.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/utility/twi.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/9f3e3e7a
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9f3e3e7a/twi.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/Wire/utility/twi.c

${OBJECTDIR}/_ext/b5825397/enc28j60.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield/enc28j60.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/b5825397
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b5825397/enc28j60.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield/enc28j60.c

${OBJECTDIR}/_ext/b5825397/etherShield.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield/etherShield.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/b5825397
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b5825397/etherShield.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield/etherShield.cpp

${OBJECTDIR}/_ext/b5825397/ip_arp_udp_tcp.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield/ip_arp_udp_tcp.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/b5825397
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b5825397/ip_arp_udp_tcp.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield/ip_arp_udp_tcp.c

${OBJECTDIR}/_ext/fac81f7c/enc28j60.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/enc28j60.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/fac81f7c
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fac81f7c/enc28j60.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/enc28j60.c

${OBJECTDIR}/_ext/fac81f7c/etherShield.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/etherShield.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/fac81f7c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fac81f7c/etherShield.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/etherShield.cpp

${OBJECTDIR}/_ext/5fac4e6e/etherShield_client.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_client/etherShield_client.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/5fac4e6e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5fac4e6e/etherShield_client.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_client/etherShield_client.pde

${OBJECTDIR}/_ext/95dd7f83/etherShield_client1.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_client1/etherShield_client1.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/95dd7f83
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/95dd7f83/etherShield_client1.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_client1/etherShield_client1.pde

${OBJECTDIR}/_ext/f39a28d5/etherShield_ping.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_ping/etherShield_ping.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/f39a28d5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f39a28d5/etherShield_ping.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_ping/etherShield_ping.pde

${OBJECTDIR}/_ext/f71793a2/etherShield_web_switch.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_web_switch/etherShield_web_switch.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/f71793a2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f71793a2/etherShield_web_switch.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_web_switch/etherShield_web_switch.pde

${OBJECTDIR}/_ext/65cf7dc6/etherShield_web_temperature.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_web_temperature/etherShield_web_temperature.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/65cf7dc6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/65cf7dc6/etherShield_web_temperature.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_web_temperature/etherShield_web_temperature.pde

${OBJECTDIR}/_ext/f7c5aa14/ethershield_webserver.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_webserver/ethershield_webserver.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/f7c5aa14
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f7c5aa14/ethershield_webserver.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_webserver/ethershield_webserver.pde

${OBJECTDIR}/_ext/fac81f7c/ip_arp_udp_tcp.o: D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/ip_arp_udp_tcp.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/fac81f7c
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fac81f7c/ip_arp_udp_tcp.o D/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/etherShield3/ip_arp_udp_tcp.c

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/arduino_fly_small.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
