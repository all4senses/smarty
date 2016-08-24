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
	${OBJECTDIR}/_ext/3492a6de/BlinkWithoutDelay_my_linple_1.o \
	${OBJECTDIR}/_ext/fca7d414/Blink_my_test_11.o \
	${OBJECTDIR}/_ext/ac42db80/EasyTransfer_RX_Example_my_11.o \
	${OBJECTDIR}/_ext/e287b77f/EasyTransfer_RX_Example_my_21_gboard.o \
	${OBJECTDIR}/_ext/26f76f2/EasyVRBridge_my_11.o \
	${OBJECTDIR}/_ext/3d44a8c0/EtherShield_DNSTest_theOnlyWorking_11.o \
	${OBJECTDIR}/_ext/2b238647/GSM_GPRSLibrary_Call_my1.o \
	${OBJECTDIR}/_ext/3cc5281c/GSM_GPRSLibrary_SMS_my1.o \
	${OBJECTDIR}/_ext/201c43ea/GSM_GPRSLibrary_SMS_my_11.o \
	${OBJECTDIR}/_ext/14e3cacd/IRrecord_my_21_simple.o \
	${OBJECTDIR}/_ext/d6e37129/IRrecord_my_31_with_ElectroSensor.o \
	${OBJECTDIR}/_ext/be854788/IRrecord_my_32_with_ElectroSensor.o \
	${OBJECTDIR}/_ext/a6271de7/IRrecord_my_33_with_ElectroSensor.o \
	${OBJECTDIR}/_ext/8dc8f446/IRrecord_my_34_with_ElectroSensor.o \
	${OBJECTDIR}/_ext/a878599b/IRrecvDemo_1.o \
	${OBJECTDIR}/_ext/6692d9f6/IRrecvDemo_11.o \
	${OBJECTDIR}/_ext/89c77184/Scroll.o \
	${OBJECTDIR}/_ext/d4bb3ffb/TestEasyVR_my_11.o \
	${OBJECTDIR}/_ext/d4bb401a/TestEasyVR_my_21.o \
	${OBJECTDIR}/_ext/220aed08/_______.o \
	${OBJECTDIR}/_ext/cadd3180/analog_write_n_read_11.o \
	${OBJECTDIR}/_ext/254c2c81/analog_write_rgb_led.o \
	${OBJECTDIR}/_ext/bdd838ad/blink_L_n_led.o \
	${OBJECTDIR}/_ext/863e7f0e/buttons_n_leds.o \
	${OBJECTDIR}/_ext/3f3d0c3a/ehternet_led_works_11.o \
	${OBJECTDIR}/_ext/f4ffdb16/eternet_led.o \
	${OBJECTDIR}/_ext/9d9cdda7/ir_rec_n_send.o \
	${OBJECTDIR}/_ext/da8b7bf/my5100_WebClient.o \
	${OBJECTDIR}/_ext/2897f337/my5100_WebServer.o \
	${OBJECTDIR}/_ext/62680d2a/my5100_WebServer_2.o \
	${OBJECTDIR}/_ext/d26e52d9/my5100_WebServer_withCurrentSensor_3.o \
	${OBJECTDIR}/_ext/8374c801/my5100_WebServer_with_EasyTransfer_11.o \
	${OBJECTDIR}/_ext/b54ff31d/myGBoard_11.o \
	${OBJECTDIR}/_ext/b54ff33c/myGBoard_21.o \
	${OBJECTDIR}/_ext/b54ff33f/myGBoard_24.o \
	${OBJECTDIR}/_ext/28f4d32c/myMEGA_27.o \
	${OBJECTDIR}/_ext/8db26fea/myMEGA_11.o \
	${OBJECTDIR}/_ext/8db2700a/myMEGA_22.o \
	${OBJECTDIR}/_ext/8db2700b/myMEGA_23.o \
	${OBJECTDIR}/_ext/8db2700c/myMEGA_24.o \
	${OBJECTDIR}/_ext/8db2700d/myMEGA_25.o \
	${OBJECTDIR}/_ext/8db2700e/myMEGA_26.o \
	${OBJECTDIR}/_ext/8db27010/myMEGA_28.o \
	${OBJECTDIR}/_ext/1afddbac/myUNO_11.o \
	${OBJECTDIR}/_ext/1afddbcb/myUNO_21.o \
	${OBJECTDIR}/_ext/1afddbce/myUNO_24.o \
	${OBJECTDIR}/_ext/4afc93f9/myUltrasound_11.o \
	${OBJECTDIR}/_ext/4afc93fa/myUltrasound_12.o \
	${OBJECTDIR}/_ext/4afc93fb/myUltrasound_13.o \
	${OBJECTDIR}/_ext/3ee6b23f/my_AT24C32_TEST_11.o \
	${OBJECTDIR}/_ext/ad657625/my_EasyVR_11.o \
	${OBJECTDIR}/_ext/508e1b35/my_ElectroSensor_11.o \
	${OBJECTDIR}/_ext/c274e701/my_GSM_Shield_Test_ext1.o \
	${OBJECTDIR}/_ext/dbd9a4c7/my_SensorNode_11.o \
	${OBJECTDIR}/_ext/40dd0cc2/my_i2c_scanner_11.o \
	${OBJECTDIR}/_ext/f251e71d/my_ir_send_11.o \
	${OBJECTDIR}/_ext/615f9448/speaker.o \
	${OBJECTDIR}/_ext/b0b7803b/ultrasound_n_relay.o \
	${OBJECTDIR}/_ext/71abd1cd/EEPROM.o \
	${OBJECTDIR}/_ext/e4229a92/eeprom_clear.o \
	${OBJECTDIR}/_ext/de1858b1/eeprom_read.o \
	${OBJECTDIR}/_ext/e53f3c24/eeprom_write.o \
	${OBJECTDIR}/_ext/be03d38/ETHER_28J60.o \
	${OBJECTDIR}/_ext/584a665a/EchoParams.o \
	${OBJECTDIR}/_ext/92d9cc2f/HelloWorld.o \
	${OBJECTDIR}/_ext/76b43ee7/ServeReadings.o \
	${OBJECTDIR}/_ext/244b548b/WebRemote.o \
	${OBJECTDIR}/_ext/ce1e53e0/EasyTransferI2C.o \
	${OBJECTDIR}/_ext/af4ba64c/EasyTransfer_RX_Example.o \
	${OBJECTDIR}/_ext/97de888a/EasyTransfer_TX_Example.o \
	${OBJECTDIR}/_ext/7346e02b/EasyVR.o \
	${OBJECTDIR}/_ext/7346e02b/EasyVRBridge.o \
	${OBJECTDIR}/_ext/9b1928a9/EasyVRBridge.o \
	${OBJECTDIR}/_ext/b67b2332/TestEasyVR.o \
	${OBJECTDIR}/_ext/141c9327/Esplora.o \
	${OBJECTDIR}/_ext/c24e5807/EsploraAccelerometer.o \
	${OBJECTDIR}/_ext/846c8f14/EsploraBlink.o \
	${OBJECTDIR}/_ext/c881d081/EsploraJoystickMouse.o \
	${OBJECTDIR}/_ext/203ec560/EsploraLedShow.o \
	${OBJECTDIR}/_ext/e799e6d2/EsploraLedShow2.o \
	${OBJECTDIR}/_ext/ad3a0f2f/EsploraLightCalibrator.o \
	${OBJECTDIR}/_ext/850bcddd/EsploraMusic.o \
	${OBJECTDIR}/_ext/14dcf761/EsploraSoundSensor.o \
	${OBJECTDIR}/_ext/2b282a06/EsploraTemperatureSensor.o \
	${OBJECTDIR}/_ext/c256f508/EsploraKart.o \
	${OBJECTDIR}/_ext/c2596ee8/EsploraPong.o \
	${OBJECTDIR}/_ext/9495d336/EsploraRemote.o \
	${OBJECTDIR}/_ext/890642de/EsploraTable.o \
	${OBJECTDIR}/_ext/feb9e330/EtherShield.o \
	${OBJECTDIR}/_ext/feb9e330/dhcp.o \
	${OBJECTDIR}/_ext/feb9e330/dnslkup.o \
	${OBJECTDIR}/_ext/feb9e330/enc28j60.o \
	${OBJECTDIR}/_ext/374e1ada/EtherShield_DHCPTest.o \
	${OBJECTDIR}/_ext/b2129fa4/EtherShield_DNSTest.o \
	${OBJECTDIR}/_ext/b42cece2/EtherShield_PachubeRGB.o \
	${OBJECTDIR}/_ext/9c7fc248/EtherShield_TFTPServer.o \
	${OBJECTDIR}/_ext/52e07cea/EtherShield_broadcast.o \
	${OBJECTDIR}/_ext/96a32135/EtherShield_readpachube.o \
	${OBJECTDIR}/_ext/ceb013a7/EtherShield_twitterclient.o \
	${OBJECTDIR}/_ext/a529bfc0/Ethershield_webserver.o \
	${OBJECTDIR}/_ext/aa049588/EtherShield_wolclient.o \
	${OBJECTDIR}/_ext/feb9e330/ip_arp_udp_tcp.o \
	${OBJECTDIR}/_ext/feb9e330/websrv_help_functions.o \
	${OBJECTDIR}/_ext/9653f284/Dhcp.o \
	${OBJECTDIR}/_ext/9653f284/Dns.o \
	${OBJECTDIR}/_ext/9653f284/Ethernet.o \
	${OBJECTDIR}/_ext/9653f284/EthernetClient.o \
	${OBJECTDIR}/_ext/9653f284/EthernetServer.o \
	${OBJECTDIR}/_ext/9653f284/EthernetUdp.o \
	${OBJECTDIR}/_ext/b2e050ab/BarometricPressureWebServer.o \
	${OBJECTDIR}/_ext/41abea56/ChatServer.o \
	${OBJECTDIR}/_ext/e2e41672/DhcpAddressPrinter.o \
	${OBJECTDIR}/_ext/14e0fa7/DhcpChatServer.o \
	${OBJECTDIR}/_ext/5539f892/PachubeClient.o \
	${OBJECTDIR}/_ext/8f680f43/PachubeClientString.o \
	${OBJECTDIR}/_ext/669970e8/TelnetClient.o \
	${OBJECTDIR}/_ext/fc67e0a3/TwitterClient.o \
	${OBJECTDIR}/_ext/4ee29846/UDPSendReceiveString.o \
	${OBJECTDIR}/_ext/6496fbef/UdpNtpClient.o \
	${OBJECTDIR}/_ext/be5d1f44/WebClient.o \
	${OBJECTDIR}/_ext/32daad83/WebClientRepeating.o \
	${OBJECTDIR}/_ext/d94c5abc/WebServer.o \
	${OBJECTDIR}/_ext/c307fce1/socket.o \
	${OBJECTDIR}/_ext/c307fce1/w5100.o \
	${OBJECTDIR}/_ext/380ec743/Firmata.o \
	${OBJECTDIR}/_ext/429956a0/AllInputsFirmata.o \
	${OBJECTDIR}/_ext/2a873166/AnalogFirmata.o \
	${OBJECTDIR}/_ext/a68ce370/EchoString.o \
	${OBJECTDIR}/_ext/bf9a7a90/I2CFirmata.o \
	${OBJECTDIR}/_ext/2eb487c6/OldStandardFirmata.o \
	${OBJECTDIR}/_ext/3184a891/ServoFirmata.o \
	${OBJECTDIR}/_ext/cb883c54/SimpleAnalogFirmata.o \
	${OBJECTDIR}/_ext/7ebc8504/SimpleDigitalFirmata.o \
	${OBJECTDIR}/_ext/88dba979/StandardFirmata.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3CircularBuffer.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileAccessProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileCellManagement.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileClientProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileClientService.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileDataNetworkProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileMockupProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileNetworkProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileNetworkRegistry.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileSMSProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileServerProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileServerService.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3MobileVoiceProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3SMSService.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1AccessProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1BandManagement.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1BaseProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1CellManagement.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ClientProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1DataNetworkProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1DirectModemProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ModemCore.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ModemVerification.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1MultiClientProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1MultiServerProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1PinManagement.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1SMSProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ScanNetworks.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ServerProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1VoiceProvider.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3SoftSerial.o \
	${OBJECTDIR}/_ext/6eba3234/GSM3VoiceCallService.o \
	${OBJECTDIR}/_ext/d8228d97/GSMPachubeClient.o \
	${OBJECTDIR}/_ext/4d4c0c88/GSMPachubeClientString.o \
	${OBJECTDIR}/_ext/f676f1a8/GsmTwitterClient.o \
	${OBJECTDIR}/_ext/2fbf7ac9/GsmWebClient.o \
	${OBJECTDIR}/_ext/4aaeb641/GsmWebServer.o \
	${OBJECTDIR}/_ext/67f51f37/MakeVoiceCall.o \
	${OBJECTDIR}/_ext/a8de64c1/ReceiveSMS.o \
	${OBJECTDIR}/_ext/9e336418/ReceiveVoiceCall.o \
	${OBJECTDIR}/_ext/2d393b46/SendSMS.o \
	${OBJECTDIR}/_ext/7f51d2b7/BandManagement.o \
	${OBJECTDIR}/_ext/62c98ac4/GsmScanNetworks.o \
	${OBJECTDIR}/_ext/88331179/PinManagement.o \
	${OBJECTDIR}/_ext/9a05121b/TestGPRS.o \
	${OBJECTDIR}/_ext/a7001bf9/TestModem.o \
	${OBJECTDIR}/_ext/e4513906/TestWebServer.o \
	${OBJECTDIR}/_ext/434bce9d/GSM.o \
	${OBJECTDIR}/_ext/434bce9d/HWSerial.o \
	${OBJECTDIR}/_ext/434bce9d/LOG.o \
	${OBJECTDIR}/_ext/434bce9d/SIM900.o \
	${OBJECTDIR}/_ext/434bce9d/WideTextFinder.o \
	${OBJECTDIR}/_ext/434bce9d/call.o \
	${OBJECTDIR}/_ext/834224f3/GSM_GPRSLibrary_AT.o \
	${OBJECTDIR}/_ext/bb4ddb3e/GSM_GPRSLibrary_Call.o \
	${OBJECTDIR}/_ext/1fdd9cab/GSM_GPRSLibrary_Client.o \
	${OBJECTDIR}/_ext/e5028fca/GSM_GPRSLibrary_GPS.o \
	${OBJECTDIR}/_ext/e502bc79/GSM_GPRSLibrary_SMS.o \
	${OBJECTDIR}/_ext/3accd823/GSM_GPRSLibrary_Server.o \
	${OBJECTDIR}/_ext/434bce9d/gps.o \
	${OBJECTDIR}/_ext/434bce9d/inetGSM.o \
	${OBJECTDIR}/_ext/434bce9d/sms.o \
	${OBJECTDIR}/_ext/b583b3f4/GSM_Shield.o \
	${OBJECTDIR}/_ext/5916c30b/GSM_Shield_Call.o \
	${OBJECTDIR}/_ext/7e39b44b/GSM_Shield_LibVer.o \
	${OBJECTDIR}/_ext/9fc72647/GSM_Shield_Reg.o \
	${OBJECTDIR}/_ext/591e8d3f/GSM_Shield_Test.o \
	${OBJECTDIR}/_ext/623415a5/IRSendRev.o \
	${OBJECTDIR}/_ext/3117339/revTest.o \
	${OBJECTDIR}/_ext/ba30e556/sendTest.o \
	${OBJECTDIR}/_ext/4052fd3c/IRremote.o \
	${OBJECTDIR}/_ext/a96463ad/IRrecord.o \
	${OBJECTDIR}/_ext/e227f945/IRrecvDemo.o \
	${OBJECTDIR}/_ext/e2283556/IRrecvDump.o \
	${OBJECTDIR}/_ext/604dafb5/IRrelay.o \
	${OBJECTDIR}/_ext/5bd0cde7/IRsendDemo.o \
	${OBJECTDIR}/_ext/1be262ee/IRtest.o \
	${OBJECTDIR}/_ext/6069fb04/IRtest2.o \
	${OBJECTDIR}/_ext/fb0a3baf/JVCPanasonicSendDemo.o \
	${OBJECTDIR}/_ext/a4d557cd/LiquidCrystal.o \
	${OBJECTDIR}/_ext/78c389a0/Autoscroll.o \
	${OBJECTDIR}/_ext/e3f07c78/Blink.o \
	${OBJECTDIR}/_ext/9c56e9ba/Cursor.o \
	${OBJECTDIR}/_ext/3f2eb8d4/CustomCharacter.o \
	${OBJECTDIR}/_ext/eff0ede/Display.o \
	${OBJECTDIR}/_ext/fd44ca44/HelloWorld.o \
	${OBJECTDIR}/_ext/b6a6bd31/Scroll.o \
	${OBJECTDIR}/_ext/806bc94a/SerialDisplay.o \
	${OBJECTDIR}/_ext/e1ba55ee/TextDirection.o \
	${OBJECTDIR}/_ext/cd252994/setCursor.o \
	${OBJECTDIR}/_ext/688f25fd/Mirf.o \
	${OBJECTDIR}/_ext/688f25fd/MirfHardwareSpiDriver.o \
	${OBJECTDIR}/_ext/688f25fd/MirfSpiDriver.o \
	${OBJECTDIR}/_ext/76671b44/ping_client.o \
	${OBJECTDIR}/_ext/915656bc/ping_server.o \
	${OBJECTDIR}/_ext/c8be9100/ping_server_interupt.o \
	${OBJECTDIR}/_ext/e46da1d5/reg_read.o \
	${OBJECTDIR}/_ext/6890e083/RF24.o \
	${OBJECTDIR}/_ext/859215b7/GettingStarted.o \
	${OBJECTDIR}/_ext/3e273af4/led_remote.o \
	${OBJECTDIR}/_ext/98b7c381/nordic_fob.o \
	${OBJECTDIR}/_ext/c89c4bc6/pingpair.o \
	${OBJECTDIR}/_ext/4691ae80/pingpair_dyn.o \
	${OBJECTDIR}/_ext/4691c06f/pingpair_irq.o \
	${OBJECTDIR}/_ext/e9540e1c/main.o \
	${OBJECTDIR}/_ext/e9540e1c/pingpair_maple.o \
	${OBJECTDIR}/_ext/44574915/pingpair_pl.o \
	${OBJECTDIR}/_ext/4c00b31b/pingpair_sleepy.o \
	${OBJECTDIR}/_ext/f905972c/scanner.o \
	${OBJECTDIR}/_ext/c3848e44/scanner.o \
	${OBJECTDIR}/_ext/30907f3e/starping.o \
	${OBJECTDIR}/_ext/a28098ad/RF24.o \
	${OBJECTDIR}/_ext/9c66fe1/GettingStarted.o \
	${OBJECTDIR}/_ext/2c233a1e/led_remote.o \
	${OBJECTDIR}/_ext/841d8c5e/nRF24_Arduino_as_hub.o \
	${OBJECTDIR}/_ext/f2b88e44/nRF24_Serial_Chat.o \
	${OBJECTDIR}/_ext/11d7a718/nRF24_sendto_hub.o \
	${OBJECTDIR}/_ext/86b3c2ab/nordic_fob.o \
	${OBJECTDIR}/_ext/39020d70/pingpair.o \
	${OBJECTDIR}/_ext/a58a8b2a/pingpair_dyn.o \
	${OBJECTDIR}/_ext/a58a9d19/pingpair_irq.o \
	${OBJECTDIR}/_ext/6d886846/main.o \
	${OBJECTDIR}/_ext/6d886846/pingpair_maple.o \
	${OBJECTDIR}/_ext/7ef94264/pingpair_multi_dyn.o \
	${OBJECTDIR}/_ext/15db2f2b/pingpair_pl.o \
	${OBJECTDIR}/_ext/4e579e31/pingpair_sleepy.o \
	${OBJECTDIR}/_ext/7d39f156/scanner.o \
	${OBJECTDIR}/_ext/dfeaef5a/scanner.o \
	${OBJECTDIR}/_ext/a0f640e8/starping.o \
	${OBJECTDIR}/_ext/c03e2f22/RF24.o \
	${OBJECTDIR}/_ext/c03e2f22/bcm2835.o \
	${OBJECTDIR}/_ext/3f153496/pingtest.o \
	${OBJECTDIR}/_ext/3f153496/pongtest.o \
	${OBJECTDIR}/_ext/3f153496/rpi-hub.o \
	${OBJECTDIR}/_ext/3f153496/scanner.o \
	${OBJECTDIR}/_ext/c7eac7a3/RF24.o \
	${OBJECTDIR}/_ext/c7eac7a3/compatibility.o \
	${OBJECTDIR}/_ext/cd159d35/pingtest.o \
	${OBJECTDIR}/_ext/cd159d35/pongtest.o \
	${OBJECTDIR}/_ext/cd159d35/rpi-hub.o \
	${OBJECTDIR}/_ext/cd159d35/scanner.o \
	${OBJECTDIR}/_ext/cd159d35/sendto_hub.o \
	${OBJECTDIR}/_ext/c7eac7a3/gpio.o \
	${OBJECTDIR}/_ext/c7eac7a3/spi.o \
	${OBJECTDIR}/_ext/691374f3/EEPROM_AT24C32.o \
	${OBJECTDIR}/_ext/691374f3/RTClib.o \
	${OBJECTDIR}/_ext/6c07abed/datecalc.o \
	${OBJECTDIR}/_ext/94073422/ds1307.o \
	${OBJECTDIR}/_ext/9175ffbe/ds1307SqwPin.o \
	${OBJECTDIR}/_ext/d4a38674/ds1307nvram.o \
	${OBJECTDIR}/_ext/292cfcd/softrtc.o \
	${OBJECTDIR}/_ext/48c405db/Adafruit_GFX.o \
	${OBJECTDIR}/_ext/48c405db/ArduinoRobot.o \
	${OBJECTDIR}/_ext/48c405db/Arduino_LCD.o \
	${OBJECTDIR}/_ext/48c405db/Compass.o \
	${OBJECTDIR}/_ext/48c405db/EEPROM_I2C.o \
	${OBJECTDIR}/_ext/48c405db/EasyTransfer2.o \
	${OBJECTDIR}/_ext/48c405db/Fat16.o \
	${OBJECTDIR}/_ext/48c405db/Melody.o \
	${OBJECTDIR}/_ext/48c405db/Motors.o \
	${OBJECTDIR}/_ext/48c405db/Multiplexer.o \
	${OBJECTDIR}/_ext/48c405db/RobotSdCard.o \
	${OBJECTDIR}/_ext/48c405db/SPI.o \
	${OBJECTDIR}/_ext/48c405db/SdCard.o \
	${OBJECTDIR}/_ext/48c405db/Sensors.o \
	${OBJECTDIR}/_ext/48c405db/Squawk.o \
	${OBJECTDIR}/_ext/48c405db/SquawkSD.o \
	${OBJECTDIR}/_ext/48c405db/Wire.o \
	${OBJECTDIR}/_ext/48c405db/communication.o \
	${OBJECTDIR}/_ext/8d647e85/R01_Logo.o \
	${OBJECTDIR}/_ext/793ddee3/R02_Line_Follow.o \
	${OBJECTDIR}/_ext/9ba6b24a/R03_Disco_Bot.o \
	${OBJECTDIR}/_ext/e2aaeafb/R04_Compass.o \
	${OBJECTDIR}/_ext/609b3fbf/R05_Inputs.o \
	${OBJECTDIR}/_ext/d3290d11/R06_Wheel_Calibration.o \
	${OBJECTDIR}/_ext/d955b870/R07_Runaway_Robot.o \
	${OBJECTDIR}/_ext/b731f7b7/R08_Remote_Control.o \
	${OBJECTDIR}/_ext/b5c2f3b5/R09_Picture_Browser.o \
	${OBJECTDIR}/_ext/fc57b20f/R10_Rescue.o \
	${OBJECTDIR}/_ext/3d5be713/R11_Hello_User.o \
	${OBJECTDIR}/_ext/4c627068/AllIOPorts.o \
	${OBJECTDIR}/_ext/227d188b/Beep.o \
	${OBJECTDIR}/_ext/6bae388c/CleanEEPROM.o \
	${OBJECTDIR}/_ext/c1f3ff95/Compass.o \
	${OBJECTDIR}/_ext/cb71f553/IRArray.o \
	${OBJECTDIR}/_ext/22d61a0a/LCDDebugPrint.o \
	${OBJECTDIR}/_ext/c4324abd/LCDPrint.o \
	${OBJECTDIR}/_ext/8fd519bc/LCDWriteText.o \
	${OBJECTDIR}/_ext/8433438e/LineFollowWithPause.o \
	${OBJECTDIR}/_ext/8a61a80d/Melody.o \
	${OBJECTDIR}/_ext/5116dc6a/MotorTest.o \
	${OBJECTDIR}/_ext/b92eec/SpeedByPotentiometer.o \
	${OBJECTDIR}/_ext/a84b408c/TurnTest.o \
	${OBJECTDIR}/_ext/548fe456/keyboardTest.o \
	${OBJECTDIR}/_ext/48c405db/glcdfont.o \
	${OBJECTDIR}/_ext/48c405db/helper.o \
	${OBJECTDIR}/_ext/48c405db/information.o \
	${OBJECTDIR}/_ext/48c405db/keyboard.o \
	${OBJECTDIR}/_ext/48c405db/lcd.o \
	${OBJECTDIR}/_ext/7cf6c938/RobotTextManager.o \
	${OBJECTDIR}/_ext/7cf6c938/VirtualKeyboard.o \
	${OBJECTDIR}/_ext/7cf6c938/twi.o \
	${OBJECTDIR}/_ext/814ae073/ArduinoRobotMotorBoard.o \
	${OBJECTDIR}/_ext/814ae073/EasyTransfer2.o \
	${OBJECTDIR}/_ext/814ae073/Multiplexer.o \
	${OBJECTDIR}/_ext/9dfdbbef/Robot_IR_Array_Test.o \
	${OBJECTDIR}/_ext/a8de34e8/Robot_Motor_Core.o \
	${OBJECTDIR}/_ext/814ae073/lineFollow.o \
	${OBJECTDIR}/_ext/bd4769e/File.o \
	${OBJECTDIR}/_ext/bd4769e/SD.o \
	${OBJECTDIR}/_ext/e42f85d3/CardInfo.o \
	${OBJECTDIR}/_ext/f7868e6f/Datalogger.o \
	${OBJECTDIR}/_ext/662cc385/DumpFile.o \
	${OBJECTDIR}/_ext/ff5ecca2/Files.o \
	${OBJECTDIR}/_ext/6ec5a094/ReadWrite.o \
	${OBJECTDIR}/_ext/f18aa164/listfiles.o \
	${OBJECTDIR}/_ext/10b7c6fb/Sd2Card.o \
	${OBJECTDIR}/_ext/10b7c6fb/SdFile.o \
	${OBJECTDIR}/_ext/10b7c6fb/SdVolume.o \
	${OBJECTDIR}/_ext/6eba5edf/SPI.o \
	${OBJECTDIR}/_ext/203774e1/BarometricPressureSensor.o \
	${OBJECTDIR}/_ext/80128e79/BarometricPressureSensor.o \
	${OBJECTDIR}/_ext/e0f31e4a/DigitalPotControl.o \
	${OBJECTDIR}/_ext/a9a8578c/Servo.o \
	${OBJECTDIR}/_ext/4a1a7359/Knob.o \
	${OBJECTDIR}/_ext/f9a8a669/Sweep.o \
	${OBJECTDIR}/_ext/90b05f68/SoftwareSerial.o \
	${OBJECTDIR}/_ext/4d91a090/SoftwareSerialExample.o \
	${OBJECTDIR}/_ext/2f75a635/TwoPortReceive.o \
	${OBJECTDIR}/_ext/f9cf7a84/Stepper.o \
	${OBJECTDIR}/_ext/bc907390/MotorKnob.o \
	${OBJECTDIR}/_ext/8fff0506/stepper_oneRevolution.o \
	${OBJECTDIR}/_ext/fd309fd2/stepper_oneStepAtATime.o \
	${OBJECTDIR}/_ext/d042f97f/stepper_speedControl.o \
	${OBJECTDIR}/_ext/4c0d4561/streaming_example.o \
	${OBJECTDIR}/_ext/6eba6175/TFT.o \
	${OBJECTDIR}/_ext/240d2e09/TFTBitmapLogo.o \
	${OBJECTDIR}/_ext/2816ed22/TFTColorPicker.o \
	${OBJECTDIR}/_ext/597ac060/TFTDisplayText.o \
	${OBJECTDIR}/_ext/eee9d2ca/TFTEtchASketch.o \
	${OBJECTDIR}/_ext/6f46f15f/TFTGraph.o \
	${OBJECTDIR}/_ext/562fa1c7/TFTPong.o \
	${OBJECTDIR}/_ext/eab40d2f/EsploraTFTBitmapLogo.o \
	${OBJECTDIR}/_ext/364bf2bc/EsploraTFTColorPicker.o \
	${OBJECTDIR}/_ext/fd1ed864/EsploraTFTEtchASketch.o \
	${OBJECTDIR}/_ext/74aeb279/EsploraTFTGraph.o \
	${OBJECTDIR}/_ext/5b8b0ec1/EsploraTFTHorizion.o \
	${OBJECTDIR}/_ext/5e9e556d/EsploraTFTPong.o \
	${OBJECTDIR}/_ext/5ea00149/EsploraTFTTemp.o \
	${OBJECTDIR}/_ext/d18cead2/Adafruit_GFX.o \
	${OBJECTDIR}/_ext/d18cead2/Adafruit_ST7735.o \
	${OBJECTDIR}/_ext/d18cead2/glcdfont.o \
	${OBJECTDIR}/_ext/61c02414/Web_AjaxBuzzer.o \
	${OBJECTDIR}/_ext/2451a7f9/Web_AjaxRGB.o \
	${OBJECTDIR}/_ext/de93aba8/Web_AjaxRGB_mobile.o \
	${OBJECTDIR}/_ext/6324df8c/Web_Authentication.o \
	${OBJECTDIR}/_ext/8fea47d4/Web_Buzzer.o \
	${OBJECTDIR}/_ext/8bbd83f7/Web_Demo.o \
	${OBJECTDIR}/_ext/716c6cf4/Web_HelloWorld.o \
	${OBJECTDIR}/_ext/ec3ce5c7/Web_Image.o \
	${OBJECTDIR}/_ext/992513a7/System.o \
	${OBJECTDIR}/_ext/992513a7/Web_Net_Setup.o \
	${OBJECTDIR}/_ext/ec9a5673/Web_Parms.o \
	${OBJECTDIR}/_ext/6893ac62/WiFi.o \
	${OBJECTDIR}/_ext/6893ac62/WiFiClient.o \
	${OBJECTDIR}/_ext/6893ac62/WiFiServer.o \
	${OBJECTDIR}/_ext/6893ac62/WiFiUdp.o \
	${OBJECTDIR}/_ext/33b6f5d5/ConnectNoEncryption.o \
	${OBJECTDIR}/_ext/890b1c6b/ConnectWithWEP.o \
	${OBJECTDIR}/_ext/890b1db1/ConnectWithWPA.o \
	${OBJECTDIR}/_ext/d33b4bdb/ScanNetworks.o \
	${OBJECTDIR}/_ext/27fd0ea1/SimpleWebServerWiFi.o \
	${OBJECTDIR}/_ext/10adedc9/WiFiChatServer.o \
	${OBJECTDIR}/_ext/10895c3f/WiFiPachubeClient.o \
	${OBJECTDIR}/_ext/1bf73d30/WiFiPachubeClientString.o \
	${OBJECTDIR}/_ext/b7b74450/WiFiTwitterClient.o \
	${OBJECTDIR}/_ext/7b25eea2/WiFiUdpNtpClient.o \
	${OBJECTDIR}/_ext/9bc1a3f9/WiFiUdpSendReceiveString.o \
	${OBJECTDIR}/_ext/28236171/WiFiWebClient.o \
	${OBJECTDIR}/_ext/47e78df6/WiFiWebClientRepeating.o \
	${OBJECTDIR}/_ext/43129ce9/WiFiWebServer.o \
	${OBJECTDIR}/_ext/edd6f8bf/server_drv.o \
	${OBJECTDIR}/_ext/edd6f8bf/socket.o \
	${OBJECTDIR}/_ext/edd6f8bf/spi_drv.o \
	${OBJECTDIR}/_ext/edd6f8bf/wifi_drv.o \
	${OBJECTDIR}/_ext/6893b1b2/Wire.o \
	${OBJECTDIR}/_ext/38bcba37/SFRRanger_reader.o \
	${OBJECTDIR}/_ext/49bdbfbd/digital_potentiometer.o \
	${OBJECTDIR}/_ext/f0c32ef7/master_reader.o \
	${OBJECTDIR}/_ext/fa067aa7/master_writer.o \
	${OBJECTDIR}/_ext/5384bc80/slave_receiver.o \
	${OBJECTDIR}/_ext/e43e5d06/slave_sender.o \
	${OBJECTDIR}/_ext/9964ae0f/twi.o \
	${OBJECTDIR}/_ext/41b51d62/enc28j60.o \
	${OBJECTDIR}/_ext/41b51d62/etherShield.o \
	${OBJECTDIR}/_ext/41b51d62/ip_arp_udp_tcp.o \
	${OBJECTDIR}/_ext/f4ee8f11/enc28j60.o \
	${OBJECTDIR}/_ext/f4ee8f11/etherShield.o \
	${OBJECTDIR}/_ext/f4663c83/etherShield_client.o \
	${OBJECTDIR}/_ext/9861540e/etherShield_client1.o \
	${OBJECTDIR}/_ext/6cb2982a/etherShield_ping.o \
	${OBJECTDIR}/_ext/a2526f37/etherShield_web_switch.o \
	${OBJECTDIR}/_ext/62679751/etherShield_web_temperature.o \
	${OBJECTDIR}/_ext/68a687df/ethershield_webserver.o \
	${OBJECTDIR}/_ext/f4ee8f11/ip_arp_udp_tcp.o \
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
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/a4s_arduino.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/a4s_arduino.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/a4s_arduino ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/3492a6de/BlinkWithoutDelay_my_linple_1.o: ../../_a4s_Projects/BlinkWithoutDelay_my_linple_1/BlinkWithoutDelay_my_linple_1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3492a6de
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3492a6de/BlinkWithoutDelay_my_linple_1.o ../../_a4s_Projects/BlinkWithoutDelay_my_linple_1/BlinkWithoutDelay_my_linple_1.ino

${OBJECTDIR}/_ext/fca7d414/Blink_my_test_11.o: ../../_a4s_Projects/Blink_my_test_11/Blink_my_test_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fca7d414
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fca7d414/Blink_my_test_11.o ../../_a4s_Projects/Blink_my_test_11/Blink_my_test_11.ino

${OBJECTDIR}/_ext/ac42db80/EasyTransfer_RX_Example_my_11.o: ../../_a4s_Projects/EasyTransfer_RX_Example_my_11/EasyTransfer_RX_Example_my_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ac42db80
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ac42db80/EasyTransfer_RX_Example_my_11.o ../../_a4s_Projects/EasyTransfer_RX_Example_my_11/EasyTransfer_RX_Example_my_11.ino

${OBJECTDIR}/_ext/e287b77f/EasyTransfer_RX_Example_my_21_gboard.o: ../../_a4s_Projects/EasyTransfer_RX_Example_my_21_gboard/EasyTransfer_RX_Example_my_21_gboard.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e287b77f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e287b77f/EasyTransfer_RX_Example_my_21_gboard.o ../../_a4s_Projects/EasyTransfer_RX_Example_my_21_gboard/EasyTransfer_RX_Example_my_21_gboard.ino

${OBJECTDIR}/_ext/26f76f2/EasyVRBridge_my_11.o: ../../_a4s_Projects/EasyVRBridge_my_11/EasyVRBridge_my_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/26f76f2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/26f76f2/EasyVRBridge_my_11.o ../../_a4s_Projects/EasyVRBridge_my_11/EasyVRBridge_my_11.ino

${OBJECTDIR}/_ext/3d44a8c0/EtherShield_DNSTest_theOnlyWorking_11.o: ../../_a4s_Projects/EtherShield_DNSTest_theOnlyWorking_11/EtherShield_DNSTest_theOnlyWorking_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3d44a8c0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3d44a8c0/EtherShield_DNSTest_theOnlyWorking_11.o ../../_a4s_Projects/EtherShield_DNSTest_theOnlyWorking_11/EtherShield_DNSTest_theOnlyWorking_11.ino

${OBJECTDIR}/_ext/2b238647/GSM_GPRSLibrary_Call_my1.o: ../../_a4s_Projects/GSM_GPRSLibrary_Call_my1/GSM_GPRSLibrary_Call_my1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2b238647
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2b238647/GSM_GPRSLibrary_Call_my1.o ../../_a4s_Projects/GSM_GPRSLibrary_Call_my1/GSM_GPRSLibrary_Call_my1.ino

${OBJECTDIR}/_ext/3cc5281c/GSM_GPRSLibrary_SMS_my1.o: ../../_a4s_Projects/GSM_GPRSLibrary_SMS_my1/GSM_GPRSLibrary_SMS_my1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3cc5281c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3cc5281c/GSM_GPRSLibrary_SMS_my1.o ../../_a4s_Projects/GSM_GPRSLibrary_SMS_my1/GSM_GPRSLibrary_SMS_my1.ino

${OBJECTDIR}/_ext/201c43ea/GSM_GPRSLibrary_SMS_my_11.o: ../../_a4s_Projects/GSM_GPRSLibrary_SMS_my_11/GSM_GPRSLibrary_SMS_my_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/201c43ea
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/201c43ea/GSM_GPRSLibrary_SMS_my_11.o ../../_a4s_Projects/GSM_GPRSLibrary_SMS_my_11/GSM_GPRSLibrary_SMS_my_11.ino

${OBJECTDIR}/_ext/14e3cacd/IRrecord_my_21_simple.o: ../../_a4s_Projects/IRrecord_my_21_simple/IRrecord_my_21_simple.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/14e3cacd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/14e3cacd/IRrecord_my_21_simple.o ../../_a4s_Projects/IRrecord_my_21_simple/IRrecord_my_21_simple.ino

${OBJECTDIR}/_ext/d6e37129/IRrecord_my_31_with_ElectroSensor.o: ../../_a4s_Projects/IRrecord_my_31_with_ElectroSensor/IRrecord_my_31_with_ElectroSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d6e37129
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d6e37129/IRrecord_my_31_with_ElectroSensor.o ../../_a4s_Projects/IRrecord_my_31_with_ElectroSensor/IRrecord_my_31_with_ElectroSensor.ino

${OBJECTDIR}/_ext/be854788/IRrecord_my_32_with_ElectroSensor.o: ../../_a4s_Projects/IRrecord_my_32_with_ElectroSensor/IRrecord_my_32_with_ElectroSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/be854788
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/be854788/IRrecord_my_32_with_ElectroSensor.o ../../_a4s_Projects/IRrecord_my_32_with_ElectroSensor/IRrecord_my_32_with_ElectroSensor.ino

${OBJECTDIR}/_ext/a6271de7/IRrecord_my_33_with_ElectroSensor.o: ../../_a4s_Projects/IRrecord_my_33_with_ElectroSensor/IRrecord_my_33_with_ElectroSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a6271de7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a6271de7/IRrecord_my_33_with_ElectroSensor.o ../../_a4s_Projects/IRrecord_my_33_with_ElectroSensor/IRrecord_my_33_with_ElectroSensor.ino

${OBJECTDIR}/_ext/8dc8f446/IRrecord_my_34_with_ElectroSensor.o: ../../_a4s_Projects/IRrecord_my_34_with_ElectroSensor/IRrecord_my_34_with_ElectroSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8dc8f446
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8dc8f446/IRrecord_my_34_with_ElectroSensor.o ../../_a4s_Projects/IRrecord_my_34_with_ElectroSensor/IRrecord_my_34_with_ElectroSensor.ino

${OBJECTDIR}/_ext/a878599b/IRrecvDemo_1.o: ../../_a4s_Projects/IRrecvDemo_1/IRrecvDemo_1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a878599b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a878599b/IRrecvDemo_1.o ../../_a4s_Projects/IRrecvDemo_1/IRrecvDemo_1.ino

${OBJECTDIR}/_ext/6692d9f6/IRrecvDemo_11.o: ../../_a4s_Projects/IRrecvDemo_11/IRrecvDemo_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6692d9f6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6692d9f6/IRrecvDemo_11.o ../../_a4s_Projects/IRrecvDemo_11/IRrecvDemo_11.ino

${OBJECTDIR}/_ext/89c77184/Scroll.o: ../../_a4s_Projects/Scroll/Scroll.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/89c77184
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/89c77184/Scroll.o ../../_a4s_Projects/Scroll/Scroll.ino

${OBJECTDIR}/_ext/d4bb3ffb/TestEasyVR_my_11.o: ../../_a4s_Projects/TestEasyVR_my_11/TestEasyVR_my_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d4bb3ffb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d4bb3ffb/TestEasyVR_my_11.o ../../_a4s_Projects/TestEasyVR_my_11/TestEasyVR_my_11.ino

${OBJECTDIR}/_ext/d4bb401a/TestEasyVR_my_21.o: ../../_a4s_Projects/TestEasyVR_my_21/TestEasyVR_my_21.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d4bb401a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d4bb401a/TestEasyVR_my_21.o ../../_a4s_Projects/TestEasyVR_my_21/TestEasyVR_my_21.ino

${OBJECTDIR}/_ext/220aed08/_______.o: ../../_a4s_Projects/_______/_______.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/220aed08
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/220aed08/_______.o ../../_a4s_Projects/_______/_______.ino

${OBJECTDIR}/_ext/cadd3180/analog_write_n_read_11.o: ../../_a4s_Projects/analog_write_n_read_11/analog_write_n_read_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/cadd3180
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cadd3180/analog_write_n_read_11.o ../../_a4s_Projects/analog_write_n_read_11/analog_write_n_read_11.ino

${OBJECTDIR}/_ext/254c2c81/analog_write_rgb_led.o: ../../_a4s_Projects/analog_write_rgb_led/analog_write_rgb_led.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/254c2c81
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/254c2c81/analog_write_rgb_led.o ../../_a4s_Projects/analog_write_rgb_led/analog_write_rgb_led.ino

${OBJECTDIR}/_ext/bdd838ad/blink_L_n_led.o: ../../_a4s_Projects/blink_L_n_led/blink_L_n_led.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/bdd838ad
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bdd838ad/blink_L_n_led.o ../../_a4s_Projects/blink_L_n_led/blink_L_n_led.ino

${OBJECTDIR}/_ext/863e7f0e/buttons_n_leds.o: ../../_a4s_Projects/buttons_n_leds/buttons_n_leds.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/863e7f0e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/863e7f0e/buttons_n_leds.o ../../_a4s_Projects/buttons_n_leds/buttons_n_leds.ino

${OBJECTDIR}/_ext/3f3d0c3a/ehternet_led_works_11.o: ../../_a4s_Projects/ehternet_led_works_11/ehternet_led_works_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3f3d0c3a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3f3d0c3a/ehternet_led_works_11.o ../../_a4s_Projects/ehternet_led_works_11/ehternet_led_works_11.ino

${OBJECTDIR}/_ext/f4ffdb16/eternet_led.o: ../../_a4s_Projects/eternet_led/eternet_led.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f4ffdb16
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f4ffdb16/eternet_led.o ../../_a4s_Projects/eternet_led/eternet_led.ino

${OBJECTDIR}/_ext/9d9cdda7/ir_rec_n_send.o: ../../_a4s_Projects/ir_rec_n_send/ir_rec_n_send.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9d9cdda7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9d9cdda7/ir_rec_n_send.o ../../_a4s_Projects/ir_rec_n_send/ir_rec_n_send.ino

${OBJECTDIR}/_ext/da8b7bf/my5100_WebClient.o: ../../_a4s_Projects/my5100_WebClient/my5100_WebClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/da8b7bf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/da8b7bf/my5100_WebClient.o ../../_a4s_Projects/my5100_WebClient/my5100_WebClient.ino

${OBJECTDIR}/_ext/2897f337/my5100_WebServer.o: ../../_a4s_Projects/my5100_WebServer/my5100_WebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2897f337
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2897f337/my5100_WebServer.o ../../_a4s_Projects/my5100_WebServer/my5100_WebServer.ino

${OBJECTDIR}/_ext/62680d2a/my5100_WebServer_2.o: ../../_a4s_Projects/my5100_WebServer_2/my5100_WebServer_2.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/62680d2a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/62680d2a/my5100_WebServer_2.o ../../_a4s_Projects/my5100_WebServer_2/my5100_WebServer_2.ino

${OBJECTDIR}/_ext/d26e52d9/my5100_WebServer_withCurrentSensor_3.o: ../../_a4s_Projects/my5100_WebServer_withCurrentSensor_3/my5100_WebServer_withCurrentSensor_3.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d26e52d9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d26e52d9/my5100_WebServer_withCurrentSensor_3.o ../../_a4s_Projects/my5100_WebServer_withCurrentSensor_3/my5100_WebServer_withCurrentSensor_3.ino

${OBJECTDIR}/_ext/8374c801/my5100_WebServer_with_EasyTransfer_11.o: ../../_a4s_Projects/my5100_WebServer_with_EasyTransfer_11/my5100_WebServer_with_EasyTransfer_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8374c801
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8374c801/my5100_WebServer_with_EasyTransfer_11.o ../../_a4s_Projects/my5100_WebServer_with_EasyTransfer_11/my5100_WebServer_with_EasyTransfer_11.ino

${OBJECTDIR}/_ext/b54ff31d/myGBoard_11.o: ../../_a4s_Projects/myGBoard_11/myGBoard_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b54ff31d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b54ff31d/myGBoard_11.o ../../_a4s_Projects/myGBoard_11/myGBoard_11.ino

${OBJECTDIR}/_ext/b54ff33c/myGBoard_21.o: ../../_a4s_Projects/myGBoard_21/myGBoard_21.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b54ff33c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b54ff33c/myGBoard_21.o ../../_a4s_Projects/myGBoard_21/myGBoard_21.ino

${OBJECTDIR}/_ext/b54ff33f/myGBoard_24.o: ../../_a4s_Projects/myGBoard_24/myGBoard_24.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b54ff33f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b54ff33f/myGBoard_24.o ../../_a4s_Projects/myGBoard_24/myGBoard_24.ino

${OBJECTDIR}/_ext/28f4d32c/myMEGA_27.o: ../../_a4s_Projects/myMEGA/myMEGA_27/myMEGA_27.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/28f4d32c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/28f4d32c/myMEGA_27.o ../../_a4s_Projects/myMEGA/myMEGA_27/myMEGA_27.ino

${OBJECTDIR}/_ext/8db26fea/myMEGA_11.o: ../../_a4s_Projects/myMEGA_11/myMEGA_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8db26fea
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8db26fea/myMEGA_11.o ../../_a4s_Projects/myMEGA_11/myMEGA_11.ino

${OBJECTDIR}/_ext/8db2700a/myMEGA_22.o: ../../_a4s_Projects/myMEGA_22/myMEGA_22.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8db2700a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8db2700a/myMEGA_22.o ../../_a4s_Projects/myMEGA_22/myMEGA_22.ino

${OBJECTDIR}/_ext/8db2700b/myMEGA_23.o: ../../_a4s_Projects/myMEGA_23/myMEGA_23.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8db2700b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8db2700b/myMEGA_23.o ../../_a4s_Projects/myMEGA_23/myMEGA_23.ino

${OBJECTDIR}/_ext/8db2700c/myMEGA_24.o: ../../_a4s_Projects/myMEGA_24/myMEGA_24.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8db2700c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8db2700c/myMEGA_24.o ../../_a4s_Projects/myMEGA_24/myMEGA_24.ino

${OBJECTDIR}/_ext/8db2700d/myMEGA_25.o: ../../_a4s_Projects/myMEGA_25/myMEGA_25.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8db2700d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8db2700d/myMEGA_25.o ../../_a4s_Projects/myMEGA_25/myMEGA_25.ino

${OBJECTDIR}/_ext/8db2700e/myMEGA_26.o: ../../_a4s_Projects/myMEGA_26/myMEGA_26.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8db2700e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8db2700e/myMEGA_26.o ../../_a4s_Projects/myMEGA_26/myMEGA_26.ino

${OBJECTDIR}/_ext/8db27010/myMEGA_28.o: ../../_a4s_Projects/myMEGA_28/myMEGA_28.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8db27010
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8db27010/myMEGA_28.o ../../_a4s_Projects/myMEGA_28/myMEGA_28.ino

${OBJECTDIR}/_ext/1afddbac/myUNO_11.o: ../../_a4s_Projects/myUNO_11/myUNO_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1afddbac
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1afddbac/myUNO_11.o ../../_a4s_Projects/myUNO_11/myUNO_11.ino

${OBJECTDIR}/_ext/1afddbcb/myUNO_21.o: ../../_a4s_Projects/myUNO_21/myUNO_21.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1afddbcb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1afddbcb/myUNO_21.o ../../_a4s_Projects/myUNO_21/myUNO_21.ino

${OBJECTDIR}/_ext/1afddbce/myUNO_24.o: ../../_a4s_Projects/myUNO_24/myUNO_24.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1afddbce
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1afddbce/myUNO_24.o ../../_a4s_Projects/myUNO_24/myUNO_24.ino

${OBJECTDIR}/_ext/4afc93f9/myUltrasound_11.o: ../../_a4s_Projects/myUltrasound_11/myUltrasound_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4afc93f9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4afc93f9/myUltrasound_11.o ../../_a4s_Projects/myUltrasound_11/myUltrasound_11.ino

${OBJECTDIR}/_ext/4afc93fa/myUltrasound_12.o: ../../_a4s_Projects/myUltrasound_12/myUltrasound_12.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4afc93fa
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4afc93fa/myUltrasound_12.o ../../_a4s_Projects/myUltrasound_12/myUltrasound_12.ino

${OBJECTDIR}/_ext/4afc93fb/myUltrasound_13.o: ../../_a4s_Projects/myUltrasound_13/myUltrasound_13.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4afc93fb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4afc93fb/myUltrasound_13.o ../../_a4s_Projects/myUltrasound_13/myUltrasound_13.ino

${OBJECTDIR}/_ext/3ee6b23f/my_AT24C32_TEST_11.o: ../../_a4s_Projects/my_AT24C32_TEST_11/my_AT24C32_TEST_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3ee6b23f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3ee6b23f/my_AT24C32_TEST_11.o ../../_a4s_Projects/my_AT24C32_TEST_11/my_AT24C32_TEST_11.ino

${OBJECTDIR}/_ext/ad657625/my_EasyVR_11.o: ../../_a4s_Projects/my_EasyVR_11/my_EasyVR_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ad657625
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ad657625/my_EasyVR_11.o ../../_a4s_Projects/my_EasyVR_11/my_EasyVR_11.ino

${OBJECTDIR}/_ext/508e1b35/my_ElectroSensor_11.o: ../../_a4s_Projects/my_ElectroSensor_11/my_ElectroSensor_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/508e1b35
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/508e1b35/my_ElectroSensor_11.o ../../_a4s_Projects/my_ElectroSensor_11/my_ElectroSensor_11.ino

${OBJECTDIR}/_ext/c274e701/my_GSM_Shield_Test_ext1.o: ../../_a4s_Projects/my_GSM_Shield_Test_ext1/my_GSM_Shield_Test_ext1.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c274e701
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c274e701/my_GSM_Shield_Test_ext1.o ../../_a4s_Projects/my_GSM_Shield_Test_ext1/my_GSM_Shield_Test_ext1.ino

${OBJECTDIR}/_ext/dbd9a4c7/my_SensorNode_11.o: ../../_a4s_Projects/my_SensorNode_11/my_SensorNode_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/dbd9a4c7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/dbd9a4c7/my_SensorNode_11.o ../../_a4s_Projects/my_SensorNode_11/my_SensorNode_11.ino

${OBJECTDIR}/_ext/40dd0cc2/my_i2c_scanner_11.o: ../../_a4s_Projects/my_i2c_scanner_11/my_i2c_scanner_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/40dd0cc2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/40dd0cc2/my_i2c_scanner_11.o ../../_a4s_Projects/my_i2c_scanner_11/my_i2c_scanner_11.ino

${OBJECTDIR}/_ext/f251e71d/my_ir_send_11.o: ../../_a4s_Projects/my_ir_send_11/my_ir_send_11.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f251e71d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f251e71d/my_ir_send_11.o ../../_a4s_Projects/my_ir_send_11/my_ir_send_11.ino

${OBJECTDIR}/_ext/615f9448/speaker.o: ../../_a4s_Projects/speaker/speaker.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/615f9448
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/615f9448/speaker.o ../../_a4s_Projects/speaker/speaker.ino

${OBJECTDIR}/_ext/b0b7803b/ultrasound_n_relay.o: ../../_a4s_Projects/ultrasound_n_relay/ultrasound_n_relay.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b0b7803b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b0b7803b/ultrasound_n_relay.o ../../_a4s_Projects/ultrasound_n_relay/ultrasound_n_relay.ino

${OBJECTDIR}/_ext/71abd1cd/EEPROM.o: ../../arduino-1.0.5-r2/libraries/EEPROM/EEPROM.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/71abd1cd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/71abd1cd/EEPROM.o ../../arduino-1.0.5-r2/libraries/EEPROM/EEPROM.cpp

${OBJECTDIR}/_ext/e4229a92/eeprom_clear.o: ../../arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_clear/eeprom_clear.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e4229a92
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e4229a92/eeprom_clear.o ../../arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_clear/eeprom_clear.ino

${OBJECTDIR}/_ext/de1858b1/eeprom_read.o: ../../arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_read/eeprom_read.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/de1858b1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/de1858b1/eeprom_read.o ../../arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_read/eeprom_read.ino

${OBJECTDIR}/_ext/e53f3c24/eeprom_write.o: ../../arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_write/eeprom_write.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e53f3c24
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e53f3c24/eeprom_write.o ../../arduino-1.0.5-r2/libraries/EEPROM/examples/eeprom_write/eeprom_write.ino

${OBJECTDIR}/_ext/be03d38/ETHER_28J60.o: ../../arduino-1.0.5-r2/libraries/ETHER_28J60/ETHER_28J60.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/be03d38
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/be03d38/ETHER_28J60.o ../../arduino-1.0.5-r2/libraries/ETHER_28J60/ETHER_28J60.cpp

${OBJECTDIR}/_ext/584a665a/EchoParams.o: ../../arduino-1.0.5-r2/libraries/ETHER_28J60/examples/EchoParams/EchoParams.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/584a665a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/584a665a/EchoParams.o ../../arduino-1.0.5-r2/libraries/ETHER_28J60/examples/EchoParams/EchoParams.pde

${OBJECTDIR}/_ext/92d9cc2f/HelloWorld.o: ../../arduino-1.0.5-r2/libraries/ETHER_28J60/examples/HelloWorld/HelloWorld.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/92d9cc2f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/92d9cc2f/HelloWorld.o ../../arduino-1.0.5-r2/libraries/ETHER_28J60/examples/HelloWorld/HelloWorld.pde

${OBJECTDIR}/_ext/76b43ee7/ServeReadings.o: ../../arduino-1.0.5-r2/libraries/ETHER_28J60/examples/ServeReadings/ServeReadings.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/76b43ee7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/76b43ee7/ServeReadings.o ../../arduino-1.0.5-r2/libraries/ETHER_28J60/examples/ServeReadings/ServeReadings.pde

${OBJECTDIR}/_ext/244b548b/WebRemote.o: ../../arduino-1.0.5-r2/libraries/ETHER_28J60/examples/WebRemote/WebRemote.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/244b548b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/244b548b/WebRemote.o ../../arduino-1.0.5-r2/libraries/ETHER_28J60/examples/WebRemote/WebRemote.pde

${OBJECTDIR}/_ext/ce1e53e0/EasyTransferI2C.o: ../../arduino-1.0.5-r2/libraries/EasyTransferI2C/EasyTransferI2C.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/ce1e53e0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ce1e53e0/EasyTransferI2C.o ../../arduino-1.0.5-r2/libraries/EasyTransferI2C/EasyTransferI2C.cpp

${OBJECTDIR}/_ext/af4ba64c/EasyTransfer_RX_Example.o: ../../arduino-1.0.5-r2/libraries/EasyTransferI2C/Examples/EasyTransfer_RX_Example/EasyTransfer_RX_Example.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/af4ba64c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/af4ba64c/EasyTransfer_RX_Example.o ../../arduino-1.0.5-r2/libraries/EasyTransferI2C/Examples/EasyTransfer_RX_Example/EasyTransfer_RX_Example.pde

${OBJECTDIR}/_ext/97de888a/EasyTransfer_TX_Example.o: ../../arduino-1.0.5-r2/libraries/EasyTransferI2C/Examples/EasyTransfer_TX_Example/EasyTransfer_TX_Example.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/97de888a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/97de888a/EasyTransfer_TX_Example.o ../../arduino-1.0.5-r2/libraries/EasyTransferI2C/Examples/EasyTransfer_TX_Example/EasyTransfer_TX_Example.pde

${OBJECTDIR}/_ext/7346e02b/EasyVR.o: ../../arduino-1.0.5-r2/libraries/EasyVR/EasyVR.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7346e02b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7346e02b/EasyVR.o ../../arduino-1.0.5-r2/libraries/EasyVR/EasyVR.cpp

${OBJECTDIR}/_ext/7346e02b/EasyVRBridge.o: ../../arduino-1.0.5-r2/libraries/EasyVR/EasyVRBridge.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7346e02b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7346e02b/EasyVRBridge.o ../../arduino-1.0.5-r2/libraries/EasyVR/EasyVRBridge.cpp

${OBJECTDIR}/_ext/9b1928a9/EasyVRBridge.o: ../../arduino-1.0.5-r2/libraries/EasyVR/examples/EasyVRBridge/EasyVRBridge.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9b1928a9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9b1928a9/EasyVRBridge.o ../../arduino-1.0.5-r2/libraries/EasyVR/examples/EasyVRBridge/EasyVRBridge.ino

${OBJECTDIR}/_ext/b67b2332/TestEasyVR.o: ../../arduino-1.0.5-r2/libraries/EasyVR/examples/TestEasyVR/TestEasyVR.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b67b2332
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b67b2332/TestEasyVR.o ../../arduino-1.0.5-r2/libraries/EasyVR/examples/TestEasyVR/TestEasyVR.ino

${OBJECTDIR}/_ext/141c9327/Esplora.o: ../../arduino-1.0.5-r2/libraries/Esplora/Esplora.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/141c9327
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/141c9327/Esplora.o ../../arduino-1.0.5-r2/libraries/Esplora/Esplora.cpp

${OBJECTDIR}/_ext/c24e5807/EsploraAccelerometer.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraAccelerometer/EsploraAccelerometer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c24e5807
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c24e5807/EsploraAccelerometer.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraAccelerometer/EsploraAccelerometer.ino

${OBJECTDIR}/_ext/846c8f14/EsploraBlink.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraBlink/EsploraBlink.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/846c8f14
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/846c8f14/EsploraBlink.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraBlink/EsploraBlink.ino

${OBJECTDIR}/_ext/c881d081/EsploraJoystickMouse.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraJoystickMouse/EsploraJoystickMouse.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c881d081
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c881d081/EsploraJoystickMouse.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraJoystickMouse/EsploraJoystickMouse.ino

${OBJECTDIR}/_ext/203ec560/EsploraLedShow.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLedShow/EsploraLedShow.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/203ec560
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/203ec560/EsploraLedShow.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLedShow/EsploraLedShow.ino

${OBJECTDIR}/_ext/e799e6d2/EsploraLedShow2.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLedShow2/EsploraLedShow2.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e799e6d2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e799e6d2/EsploraLedShow2.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLedShow2/EsploraLedShow2.ino

${OBJECTDIR}/_ext/ad3a0f2f/EsploraLightCalibrator.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLightCalibrator/EsploraLightCalibrator.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ad3a0f2f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ad3a0f2f/EsploraLightCalibrator.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraLightCalibrator/EsploraLightCalibrator.ino

${OBJECTDIR}/_ext/850bcddd/EsploraMusic.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraMusic/EsploraMusic.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/850bcddd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/850bcddd/EsploraMusic.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraMusic/EsploraMusic.ino

${OBJECTDIR}/_ext/14dcf761/EsploraSoundSensor.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraSoundSensor/EsploraSoundSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/14dcf761
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/14dcf761/EsploraSoundSensor.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraSoundSensor/EsploraSoundSensor.ino

${OBJECTDIR}/_ext/2b282a06/EsploraTemperatureSensor.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraTemperatureSensor/EsploraTemperatureSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2b282a06
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2b282a06/EsploraTemperatureSensor.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Beginners/EsploraTemperatureSensor/EsploraTemperatureSensor.ino

${OBJECTDIR}/_ext/c256f508/EsploraKart.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraKart/EsploraKart.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c256f508
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c256f508/EsploraKart.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraKart/EsploraKart.ino

${OBJECTDIR}/_ext/c2596ee8/EsploraPong.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraPong/EsploraPong.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c2596ee8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c2596ee8/EsploraPong.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraPong/EsploraPong.ino

${OBJECTDIR}/_ext/9495d336/EsploraRemote.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraRemote/EsploraRemote.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9495d336
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9495d336/EsploraRemote.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraRemote/EsploraRemote.ino

${OBJECTDIR}/_ext/890642de/EsploraTable.o: ../../arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraTable/EsploraTable.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/890642de
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/890642de/EsploraTable.o ../../arduino-1.0.5-r2/libraries/Esplora/examples/Experts/EsploraTable/EsploraTable.ino

${OBJECTDIR}/_ext/feb9e330/EtherShield.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/EtherShield.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/feb9e330
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/feb9e330/EtherShield.o ../../arduino-1.0.5-r2/libraries/EtherShield2/EtherShield.cpp

${OBJECTDIR}/_ext/feb9e330/dhcp.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/dhcp.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/feb9e330
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/feb9e330/dhcp.o ../../arduino-1.0.5-r2/libraries/EtherShield2/dhcp.c

${OBJECTDIR}/_ext/feb9e330/dnslkup.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/dnslkup.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/feb9e330
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/feb9e330/dnslkup.o ../../arduino-1.0.5-r2/libraries/EtherShield2/dnslkup.c

${OBJECTDIR}/_ext/feb9e330/enc28j60.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/enc28j60.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/feb9e330
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/feb9e330/enc28j60.o ../../arduino-1.0.5-r2/libraries/EtherShield2/enc28j60.c

${OBJECTDIR}/_ext/374e1ada/EtherShield_DHCPTest.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_DHCPTest/EtherShield_DHCPTest.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/374e1ada
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/374e1ada/EtherShield_DHCPTest.o ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_DHCPTest/EtherShield_DHCPTest.pde

${OBJECTDIR}/_ext/b2129fa4/EtherShield_DNSTest.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_DNSTest/EtherShield_DNSTest.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/b2129fa4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b2129fa4/EtherShield_DNSTest.o ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_DNSTest/EtherShield_DNSTest.pde

${OBJECTDIR}/_ext/b42cece2/EtherShield_PachubeRGB.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_PachubeRGB/EtherShield_PachubeRGB.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/b42cece2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b42cece2/EtherShield_PachubeRGB.o ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_PachubeRGB/EtherShield_PachubeRGB.pde

${OBJECTDIR}/_ext/9c7fc248/EtherShield_TFTPServer.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_TFTPServer/EtherShield_TFTPServer.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9c7fc248
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9c7fc248/EtherShield_TFTPServer.o ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_TFTPServer/EtherShield_TFTPServer.pde

${OBJECTDIR}/_ext/52e07cea/EtherShield_broadcast.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_broadcast/EtherShield_broadcast.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/52e07cea
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/52e07cea/EtherShield_broadcast.o ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_broadcast/EtherShield_broadcast.pde

${OBJECTDIR}/_ext/96a32135/EtherShield_readpachube.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_readpachube/EtherShield_readpachube.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/96a32135
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/96a32135/EtherShield_readpachube.o ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_readpachube/EtherShield_readpachube.pde

${OBJECTDIR}/_ext/ceb013a7/EtherShield_twitterclient.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_twitterclient/EtherShield_twitterclient.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/ceb013a7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ceb013a7/EtherShield_twitterclient.o ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_twitterclient/EtherShield_twitterclient.pde

${OBJECTDIR}/_ext/a529bfc0/Ethershield_webserver.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_webserver/Ethershield_webserver.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/a529bfc0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a529bfc0/Ethershield_webserver.o ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_webserver/Ethershield_webserver.pde

${OBJECTDIR}/_ext/aa049588/EtherShield_wolclient.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_wolclient/EtherShield_wolclient.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/aa049588
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/aa049588/EtherShield_wolclient.o ../../arduino-1.0.5-r2/libraries/EtherShield2/examples/EtherShield_wolclient/EtherShield_wolclient.pde

${OBJECTDIR}/_ext/feb9e330/ip_arp_udp_tcp.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/ip_arp_udp_tcp.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/feb9e330
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/feb9e330/ip_arp_udp_tcp.o ../../arduino-1.0.5-r2/libraries/EtherShield2/ip_arp_udp_tcp.c

${OBJECTDIR}/_ext/feb9e330/websrv_help_functions.o: ../../arduino-1.0.5-r2/libraries/EtherShield2/websrv_help_functions.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/feb9e330
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/feb9e330/websrv_help_functions.o ../../arduino-1.0.5-r2/libraries/EtherShield2/websrv_help_functions.c

${OBJECTDIR}/_ext/9653f284/Dhcp.o: ../../arduino-1.0.5-r2/libraries/Ethernet/Dhcp.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9653f284
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9653f284/Dhcp.o ../../arduino-1.0.5-r2/libraries/Ethernet/Dhcp.cpp

${OBJECTDIR}/_ext/9653f284/Dns.o: ../../arduino-1.0.5-r2/libraries/Ethernet/Dns.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9653f284
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9653f284/Dns.o ../../arduino-1.0.5-r2/libraries/Ethernet/Dns.cpp

${OBJECTDIR}/_ext/9653f284/Ethernet.o: ../../arduino-1.0.5-r2/libraries/Ethernet/Ethernet.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9653f284
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9653f284/Ethernet.o ../../arduino-1.0.5-r2/libraries/Ethernet/Ethernet.cpp

${OBJECTDIR}/_ext/9653f284/EthernetClient.o: ../../arduino-1.0.5-r2/libraries/Ethernet/EthernetClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9653f284
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9653f284/EthernetClient.o ../../arduino-1.0.5-r2/libraries/Ethernet/EthernetClient.cpp

${OBJECTDIR}/_ext/9653f284/EthernetServer.o: ../../arduino-1.0.5-r2/libraries/Ethernet/EthernetServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9653f284
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9653f284/EthernetServer.o ../../arduino-1.0.5-r2/libraries/Ethernet/EthernetServer.cpp

${OBJECTDIR}/_ext/9653f284/EthernetUdp.o: ../../arduino-1.0.5-r2/libraries/Ethernet/EthernetUdp.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9653f284
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9653f284/EthernetUdp.o ../../arduino-1.0.5-r2/libraries/Ethernet/EthernetUdp.cpp

${OBJECTDIR}/_ext/b2e050ab/BarometricPressureWebServer.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/BarometricPressureWebServer/BarometricPressureWebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b2e050ab
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b2e050ab/BarometricPressureWebServer.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/BarometricPressureWebServer/BarometricPressureWebServer.ino

${OBJECTDIR}/_ext/41abea56/ChatServer.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/ChatServer/ChatServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/41abea56
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/41abea56/ChatServer.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/ChatServer/ChatServer.ino

${OBJECTDIR}/_ext/e2e41672/DhcpAddressPrinter.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/DhcpAddressPrinter/DhcpAddressPrinter.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e2e41672
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e2e41672/DhcpAddressPrinter.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/DhcpAddressPrinter/DhcpAddressPrinter.ino

${OBJECTDIR}/_ext/14e0fa7/DhcpChatServer.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/DhcpChatServer/DhcpChatServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/14e0fa7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/14e0fa7/DhcpChatServer.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/DhcpChatServer/DhcpChatServer.ino

${OBJECTDIR}/_ext/5539f892/PachubeClient.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/PachubeClient/PachubeClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5539f892
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5539f892/PachubeClient.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/PachubeClient/PachubeClient.ino

${OBJECTDIR}/_ext/8f680f43/PachubeClientString.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/PachubeClientString/PachubeClientString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8f680f43
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8f680f43/PachubeClientString.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/PachubeClientString/PachubeClientString.ino

${OBJECTDIR}/_ext/669970e8/TelnetClient.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/TelnetClient/TelnetClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/669970e8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/669970e8/TelnetClient.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/TelnetClient/TelnetClient.ino

${OBJECTDIR}/_ext/fc67e0a3/TwitterClient.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/TwitterClient/TwitterClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fc67e0a3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fc67e0a3/TwitterClient.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/TwitterClient/TwitterClient.ino

${OBJECTDIR}/_ext/4ee29846/UDPSendReceiveString.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/UDPSendReceiveString/UDPSendReceiveString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4ee29846
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4ee29846/UDPSendReceiveString.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/UDPSendReceiveString/UDPSendReceiveString.ino

${OBJECTDIR}/_ext/6496fbef/UdpNtpClient.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/UdpNtpClient/UdpNtpClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6496fbef
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6496fbef/UdpNtpClient.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/UdpNtpClient/UdpNtpClient.ino

${OBJECTDIR}/_ext/be5d1f44/WebClient.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/WebClient/WebClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/be5d1f44
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/be5d1f44/WebClient.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/WebClient/WebClient.ino

${OBJECTDIR}/_ext/32daad83/WebClientRepeating.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/WebClientRepeating/WebClientRepeating.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/32daad83
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/32daad83/WebClientRepeating.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/WebClientRepeating/WebClientRepeating.ino

${OBJECTDIR}/_ext/d94c5abc/WebServer.o: ../../arduino-1.0.5-r2/libraries/Ethernet/examples/WebServer/WebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d94c5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d94c5abc/WebServer.o ../../arduino-1.0.5-r2/libraries/Ethernet/examples/WebServer/WebServer.ino

${OBJECTDIR}/_ext/c307fce1/socket.o: ../../arduino-1.0.5-r2/libraries/Ethernet/utility/socket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c307fce1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c307fce1/socket.o ../../arduino-1.0.5-r2/libraries/Ethernet/utility/socket.cpp

${OBJECTDIR}/_ext/c307fce1/w5100.o: ../../arduino-1.0.5-r2/libraries/Ethernet/utility/w5100.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c307fce1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c307fce1/w5100.o ../../arduino-1.0.5-r2/libraries/Ethernet/utility/w5100.cpp

${OBJECTDIR}/_ext/380ec743/Firmata.o: ../../arduino-1.0.5-r2/libraries/Firmata/Firmata.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/380ec743
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/380ec743/Firmata.o ../../arduino-1.0.5-r2/libraries/Firmata/Firmata.cpp

${OBJECTDIR}/_ext/429956a0/AllInputsFirmata.o: ../../arduino-1.0.5-r2/libraries/Firmata/examples/AllInputsFirmata/AllInputsFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/429956a0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/429956a0/AllInputsFirmata.o ../../arduino-1.0.5-r2/libraries/Firmata/examples/AllInputsFirmata/AllInputsFirmata.ino

${OBJECTDIR}/_ext/2a873166/AnalogFirmata.o: ../../arduino-1.0.5-r2/libraries/Firmata/examples/AnalogFirmata/AnalogFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2a873166
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2a873166/AnalogFirmata.o ../../arduino-1.0.5-r2/libraries/Firmata/examples/AnalogFirmata/AnalogFirmata.ino

${OBJECTDIR}/_ext/a68ce370/EchoString.o: ../../arduino-1.0.5-r2/libraries/Firmata/examples/EchoString/EchoString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a68ce370
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a68ce370/EchoString.o ../../arduino-1.0.5-r2/libraries/Firmata/examples/EchoString/EchoString.ino

${OBJECTDIR}/_ext/bf9a7a90/I2CFirmata.o: ../../arduino-1.0.5-r2/libraries/Firmata/examples/I2CFirmata/I2CFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/bf9a7a90
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bf9a7a90/I2CFirmata.o ../../arduino-1.0.5-r2/libraries/Firmata/examples/I2CFirmata/I2CFirmata.ino

${OBJECTDIR}/_ext/2eb487c6/OldStandardFirmata.o: ../../arduino-1.0.5-r2/libraries/Firmata/examples/OldStandardFirmata/OldStandardFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2eb487c6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2eb487c6/OldStandardFirmata.o ../../arduino-1.0.5-r2/libraries/Firmata/examples/OldStandardFirmata/OldStandardFirmata.ino

${OBJECTDIR}/_ext/3184a891/ServoFirmata.o: ../../arduino-1.0.5-r2/libraries/Firmata/examples/ServoFirmata/ServoFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3184a891
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3184a891/ServoFirmata.o ../../arduino-1.0.5-r2/libraries/Firmata/examples/ServoFirmata/ServoFirmata.ino

${OBJECTDIR}/_ext/cb883c54/SimpleAnalogFirmata.o: ../../arduino-1.0.5-r2/libraries/Firmata/examples/SimpleAnalogFirmata/SimpleAnalogFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/cb883c54
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cb883c54/SimpleAnalogFirmata.o ../../arduino-1.0.5-r2/libraries/Firmata/examples/SimpleAnalogFirmata/SimpleAnalogFirmata.ino

${OBJECTDIR}/_ext/7ebc8504/SimpleDigitalFirmata.o: ../../arduino-1.0.5-r2/libraries/Firmata/examples/SimpleDigitalFirmata/SimpleDigitalFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/7ebc8504
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7ebc8504/SimpleDigitalFirmata.o ../../arduino-1.0.5-r2/libraries/Firmata/examples/SimpleDigitalFirmata/SimpleDigitalFirmata.ino

${OBJECTDIR}/_ext/88dba979/StandardFirmata.o: ../../arduino-1.0.5-r2/libraries/Firmata/examples/StandardFirmata/StandardFirmata.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/88dba979
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/88dba979/StandardFirmata.o ../../arduino-1.0.5-r2/libraries/Firmata/examples/StandardFirmata/StandardFirmata.ino

${OBJECTDIR}/_ext/6eba3234/GSM3CircularBuffer.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3CircularBuffer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3CircularBuffer.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3CircularBuffer.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileAccessProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileAccessProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileAccessProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileAccessProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileCellManagement.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileCellManagement.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileCellManagement.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileCellManagement.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileClientProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileClientProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileClientProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileClientProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileClientService.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileClientService.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileClientService.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileClientService.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileDataNetworkProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileDataNetworkProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileDataNetworkProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileDataNetworkProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileMockupProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileMockupProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileMockupProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileMockupProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileNetworkProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileNetworkProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileNetworkProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileNetworkProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileNetworkRegistry.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileNetworkRegistry.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileNetworkRegistry.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileNetworkRegistry.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileSMSProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileSMSProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileSMSProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileSMSProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileServerProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileServerProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileServerProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileServerProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileServerService.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileServerService.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileServerService.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileServerService.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3MobileVoiceProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileVoiceProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3MobileVoiceProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3MobileVoiceProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3SMSService.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3SMSService.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3SMSService.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3SMSService.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1AccessProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1AccessProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1AccessProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1AccessProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1BandManagement.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1BandManagement.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1BandManagement.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1BandManagement.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1BaseProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1BaseProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1BaseProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1BaseProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1CellManagement.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1CellManagement.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1CellManagement.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1CellManagement.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ClientProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ClientProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ClientProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ClientProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1DataNetworkProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1DataNetworkProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1DataNetworkProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1DataNetworkProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1DirectModemProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1DirectModemProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1DirectModemProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1DirectModemProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ModemCore.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ModemCore.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ModemCore.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ModemCore.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ModemVerification.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ModemVerification.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ModemVerification.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ModemVerification.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1MultiClientProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1MultiClientProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1MultiClientProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1MultiClientProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1MultiServerProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1MultiServerProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1MultiServerProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1MultiServerProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1PinManagement.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1PinManagement.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1PinManagement.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1PinManagement.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1SMSProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1SMSProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1SMSProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1SMSProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ScanNetworks.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ScanNetworks.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ScanNetworks.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ScanNetworks.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ServerProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ServerProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1ServerProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1ServerProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1VoiceProvider.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1VoiceProvider.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3ShieldV1VoiceProvider.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3ShieldV1VoiceProvider.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3SoftSerial.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3SoftSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3SoftSerial.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3SoftSerial.cpp

${OBJECTDIR}/_ext/6eba3234/GSM3VoiceCallService.o: ../../arduino-1.0.5-r2/libraries/GSM/GSM3VoiceCallService.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba3234
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba3234/GSM3VoiceCallService.o ../../arduino-1.0.5-r2/libraries/GSM/GSM3VoiceCallService.cpp

${OBJECTDIR}/_ext/d8228d97/GSMPachubeClient.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/GSMPachubeClient/GSMPachubeClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d8228d97
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d8228d97/GSMPachubeClient.o ../../arduino-1.0.5-r2/libraries/GSM/examples/GSMPachubeClient/GSMPachubeClient.ino

${OBJECTDIR}/_ext/4d4c0c88/GSMPachubeClientString.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/GSMPachubeClientString/GSMPachubeClientString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4d4c0c88
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4d4c0c88/GSMPachubeClientString.o ../../arduino-1.0.5-r2/libraries/GSM/examples/GSMPachubeClientString/GSMPachubeClientString.ino

${OBJECTDIR}/_ext/f676f1a8/GsmTwitterClient.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/GsmTwitterClient/GsmTwitterClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f676f1a8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f676f1a8/GsmTwitterClient.o ../../arduino-1.0.5-r2/libraries/GSM/examples/GsmTwitterClient/GsmTwitterClient.ino

${OBJECTDIR}/_ext/2fbf7ac9/GsmWebClient.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/GsmWebClient/GsmWebClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2fbf7ac9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2fbf7ac9/GsmWebClient.o ../../arduino-1.0.5-r2/libraries/GSM/examples/GsmWebClient/GsmWebClient.ino

${OBJECTDIR}/_ext/4aaeb641/GsmWebServer.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/GsmWebServer/GsmWebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4aaeb641
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4aaeb641/GsmWebServer.o ../../arduino-1.0.5-r2/libraries/GSM/examples/GsmWebServer/GsmWebServer.ino

${OBJECTDIR}/_ext/67f51f37/MakeVoiceCall.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/MakeVoiceCall/MakeVoiceCall.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/67f51f37
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/67f51f37/MakeVoiceCall.o ../../arduino-1.0.5-r2/libraries/GSM/examples/MakeVoiceCall/MakeVoiceCall.ino

${OBJECTDIR}/_ext/a8de64c1/ReceiveSMS.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/ReceiveSMS/ReceiveSMS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a8de64c1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a8de64c1/ReceiveSMS.o ../../arduino-1.0.5-r2/libraries/GSM/examples/ReceiveSMS/ReceiveSMS.ino

${OBJECTDIR}/_ext/9e336418/ReceiveVoiceCall.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/ReceiveVoiceCall/ReceiveVoiceCall.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9e336418
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9e336418/ReceiveVoiceCall.o ../../arduino-1.0.5-r2/libraries/GSM/examples/ReceiveVoiceCall/ReceiveVoiceCall.ino

${OBJECTDIR}/_ext/2d393b46/SendSMS.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/SendSMS/SendSMS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2d393b46
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2d393b46/SendSMS.o ../../arduino-1.0.5-r2/libraries/GSM/examples/SendSMS/SendSMS.ino

${OBJECTDIR}/_ext/7f51d2b7/BandManagement.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/BandManagement/BandManagement.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/7f51d2b7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7f51d2b7/BandManagement.o ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/BandManagement/BandManagement.ino

${OBJECTDIR}/_ext/62c98ac4/GsmScanNetworks.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/GsmScanNetworks/GsmScanNetworks.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/62c98ac4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/62c98ac4/GsmScanNetworks.o ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/GsmScanNetworks/GsmScanNetworks.ino

${OBJECTDIR}/_ext/88331179/PinManagement.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/PinManagement/PinManagement.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/88331179
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/88331179/PinManagement.o ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/PinManagement/PinManagement.ino

${OBJECTDIR}/_ext/9a05121b/TestGPRS.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestGPRS/TestGPRS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9a05121b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9a05121b/TestGPRS.o ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestGPRS/TestGPRS.ino

${OBJECTDIR}/_ext/a7001bf9/TestModem.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestModem/TestModem.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a7001bf9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a7001bf9/TestModem.o ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestModem/TestModem.ino

${OBJECTDIR}/_ext/e4513906/TestWebServer.o: ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestWebServer/TestWebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e4513906
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e4513906/TestWebServer.o ../../arduino-1.0.5-r2/libraries/GSM/examples/Tools/TestWebServer/TestWebServer.ino

${OBJECTDIR}/_ext/434bce9d/GSM.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/GSM.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/434bce9d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/434bce9d/GSM.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/GSM.cpp

${OBJECTDIR}/_ext/434bce9d/HWSerial.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/HWSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/434bce9d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/434bce9d/HWSerial.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/HWSerial.cpp

${OBJECTDIR}/_ext/434bce9d/LOG.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/LOG.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/434bce9d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/434bce9d/LOG.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/LOG.cpp

${OBJECTDIR}/_ext/434bce9d/SIM900.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/SIM900.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/434bce9d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/434bce9d/SIM900.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/SIM900.cpp

${OBJECTDIR}/_ext/434bce9d/WideTextFinder.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/WideTextFinder.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/434bce9d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/434bce9d/WideTextFinder.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/WideTextFinder.cpp

${OBJECTDIR}/_ext/434bce9d/call.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/call.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/434bce9d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/434bce9d/call.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/call.cpp

${OBJECTDIR}/_ext/834224f3/GSM_GPRSLibrary_AT.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_AT/GSM_GPRSLibrary_AT.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/834224f3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/834224f3/GSM_GPRSLibrary_AT.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_AT/GSM_GPRSLibrary_AT.ino

${OBJECTDIR}/_ext/bb4ddb3e/GSM_GPRSLibrary_Call.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Call/GSM_GPRSLibrary_Call.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/bb4ddb3e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bb4ddb3e/GSM_GPRSLibrary_Call.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Call/GSM_GPRSLibrary_Call.ino

${OBJECTDIR}/_ext/1fdd9cab/GSM_GPRSLibrary_Client.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Client/GSM_GPRSLibrary_Client.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1fdd9cab
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1fdd9cab/GSM_GPRSLibrary_Client.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Client/GSM_GPRSLibrary_Client.ino

${OBJECTDIR}/_ext/e5028fca/GSM_GPRSLibrary_GPS.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_GPS/GSM_GPRSLibrary_GPS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e5028fca
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e5028fca/GSM_GPRSLibrary_GPS.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_GPS/GSM_GPRSLibrary_GPS.ino

${OBJECTDIR}/_ext/e502bc79/GSM_GPRSLibrary_SMS.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_SMS/GSM_GPRSLibrary_SMS.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e502bc79
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e502bc79/GSM_GPRSLibrary_SMS.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_SMS/GSM_GPRSLibrary_SMS.ino

${OBJECTDIR}/_ext/3accd823/GSM_GPRSLibrary_Server.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Server/GSM_GPRSLibrary_Server.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3accd823
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3accd823/GSM_GPRSLibrary_Server.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/examples/GSM_GPRSLibrary_Server/GSM_GPRSLibrary_Server.ino

${OBJECTDIR}/_ext/434bce9d/gps.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/gps.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/434bce9d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/434bce9d/gps.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/gps.cpp

${OBJECTDIR}/_ext/434bce9d/inetGSM.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/inetGSM.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/434bce9d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/434bce9d/inetGSM.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/inetGSM.cpp

${OBJECTDIR}/_ext/434bce9d/sms.o: ../../arduino-1.0.5-r2/libraries/GSMSHIELD/sms.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/434bce9d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/434bce9d/sms.o ../../arduino-1.0.5-r2/libraries/GSMSHIELD/sms.cpp

${OBJECTDIR}/_ext/b583b3f4/GSM_Shield.o: ../../arduino-1.0.5-r2/libraries/GSM_Shield/GSM_Shield.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/b583b3f4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b583b3f4/GSM_Shield.o ../../arduino-1.0.5-r2/libraries/GSM_Shield/GSM_Shield.cpp

${OBJECTDIR}/_ext/5916c30b/GSM_Shield_Call.o: ../../arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Call/GSM_Shield_Call.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/5916c30b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5916c30b/GSM_Shield_Call.o ../../arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Call/GSM_Shield_Call.pde

${OBJECTDIR}/_ext/7e39b44b/GSM_Shield_LibVer.o: ../../arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_LibVer/GSM_Shield_LibVer.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/7e39b44b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7e39b44b/GSM_Shield_LibVer.o ../../arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_LibVer/GSM_Shield_LibVer.pde

${OBJECTDIR}/_ext/9fc72647/GSM_Shield_Reg.o: ../../arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Reg/GSM_Shield_Reg.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9fc72647
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9fc72647/GSM_Shield_Reg.o ../../arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Reg/GSM_Shield_Reg.pde

${OBJECTDIR}/_ext/591e8d3f/GSM_Shield_Test.o: ../../arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Test/GSM_Shield_Test.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/591e8d3f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/591e8d3f/GSM_Shield_Test.o ../../arduino-1.0.5-r2/libraries/GSM_Shield/examples/GSM_Shield_Test/GSM_Shield_Test.pde

${OBJECTDIR}/_ext/623415a5/IRSendRev.o: ../../arduino-1.0.5-r2/libraries/IRSendRev/IRSendRev.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/623415a5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/623415a5/IRSendRev.o ../../arduino-1.0.5-r2/libraries/IRSendRev/IRSendRev.cpp

${OBJECTDIR}/_ext/3117339/revTest.o: ../../arduino-1.0.5-r2/libraries/IRSendRev/examples/revTest/revTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3117339
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3117339/revTest.o ../../arduino-1.0.5-r2/libraries/IRSendRev/examples/revTest/revTest.ino

${OBJECTDIR}/_ext/ba30e556/sendTest.o: ../../arduino-1.0.5-r2/libraries/IRSendRev/examples/sendTest/sendTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ba30e556
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ba30e556/sendTest.o ../../arduino-1.0.5-r2/libraries/IRSendRev/examples/sendTest/sendTest.ino

${OBJECTDIR}/_ext/4052fd3c/IRremote.o: ../../arduino-1.0.5-r2/libraries/IRremote/IRremote.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/4052fd3c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4052fd3c/IRremote.o ../../arduino-1.0.5-r2/libraries/IRremote/IRremote.cpp

${OBJECTDIR}/_ext/a96463ad/IRrecord.o: ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRrecord/IRrecord.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a96463ad
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a96463ad/IRrecord.o ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRrecord/IRrecord.ino

${OBJECTDIR}/_ext/e227f945/IRrecvDemo.o: ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRrecvDemo/IRrecvDemo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e227f945
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e227f945/IRrecvDemo.o ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRrecvDemo/IRrecvDemo.ino

${OBJECTDIR}/_ext/e2283556/IRrecvDump.o: ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRrecvDump/IRrecvDump.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e2283556
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e2283556/IRrecvDump.o ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRrecvDump/IRrecvDump.ino

${OBJECTDIR}/_ext/604dafb5/IRrelay.o: ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRrelay/IRrelay.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/604dafb5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/604dafb5/IRrelay.o ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRrelay/IRrelay.ino

${OBJECTDIR}/_ext/5bd0cde7/IRsendDemo.o: ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRsendDemo/IRsendDemo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5bd0cde7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5bd0cde7/IRsendDemo.o ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRsendDemo/IRsendDemo.ino

${OBJECTDIR}/_ext/1be262ee/IRtest.o: ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRtest/IRtest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1be262ee
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1be262ee/IRtest.o ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRtest/IRtest.ino

${OBJECTDIR}/_ext/6069fb04/IRtest2.o: ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRtest2/IRtest2.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6069fb04
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6069fb04/IRtest2.o ../../arduino-1.0.5-r2/libraries/IRremote/examples/IRtest2/IRtest2.ino

${OBJECTDIR}/_ext/fb0a3baf/JVCPanasonicSendDemo.o: ../../arduino-1.0.5-r2/libraries/IRremote/examples/JVCPanasonicSendDemo/JVCPanasonicSendDemo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fb0a3baf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fb0a3baf/JVCPanasonicSendDemo.o ../../arduino-1.0.5-r2/libraries/IRremote/examples/JVCPanasonicSendDemo/JVCPanasonicSendDemo.ino

${OBJECTDIR}/_ext/a4d557cd/LiquidCrystal.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/LiquidCrystal.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a4d557cd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a4d557cd/LiquidCrystal.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/LiquidCrystal.cpp

${OBJECTDIR}/_ext/78c389a0/Autoscroll.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Autoscroll/Autoscroll.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/78c389a0
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/78c389a0/Autoscroll.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Autoscroll/Autoscroll.ino

${OBJECTDIR}/_ext/e3f07c78/Blink.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Blink/Blink.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e3f07c78
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e3f07c78/Blink.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Blink/Blink.ino

${OBJECTDIR}/_ext/9c56e9ba/Cursor.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Cursor/Cursor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9c56e9ba
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9c56e9ba/Cursor.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Cursor/Cursor.ino

${OBJECTDIR}/_ext/3f2eb8d4/CustomCharacter.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/CustomCharacter/CustomCharacter.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3f2eb8d4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3f2eb8d4/CustomCharacter.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/CustomCharacter/CustomCharacter.ino

${OBJECTDIR}/_ext/eff0ede/Display.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Display/Display.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/eff0ede
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/eff0ede/Display.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Display/Display.ino

${OBJECTDIR}/_ext/fd44ca44/HelloWorld.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/HelloWorld/HelloWorld.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fd44ca44
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fd44ca44/HelloWorld.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/HelloWorld/HelloWorld.ino

${OBJECTDIR}/_ext/b6a6bd31/Scroll.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Scroll/Scroll.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b6a6bd31
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b6a6bd31/Scroll.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/Scroll/Scroll.ino

${OBJECTDIR}/_ext/806bc94a/SerialDisplay.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/SerialDisplay/SerialDisplay.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/806bc94a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/806bc94a/SerialDisplay.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/SerialDisplay/SerialDisplay.ino

${OBJECTDIR}/_ext/e1ba55ee/TextDirection.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/TextDirection/TextDirection.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e1ba55ee
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e1ba55ee/TextDirection.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/TextDirection/TextDirection.ino

${OBJECTDIR}/_ext/cd252994/setCursor.o: ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/setCursor/setCursor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/cd252994
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cd252994/setCursor.o ../../arduino-1.0.5-r2/libraries/LiquidCrystal/examples/setCursor/setCursor.ino

${OBJECTDIR}/_ext/688f25fd/Mirf.o: ../../arduino-1.0.5-r2/libraries/Mirf/Mirf.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/688f25fd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/688f25fd/Mirf.o ../../arduino-1.0.5-r2/libraries/Mirf/Mirf.cpp

${OBJECTDIR}/_ext/688f25fd/MirfHardwareSpiDriver.o: ../../arduino-1.0.5-r2/libraries/Mirf/MirfHardwareSpiDriver.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/688f25fd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/688f25fd/MirfHardwareSpiDriver.o ../../arduino-1.0.5-r2/libraries/Mirf/MirfHardwareSpiDriver.cpp

${OBJECTDIR}/_ext/688f25fd/MirfSpiDriver.o: ../../arduino-1.0.5-r2/libraries/Mirf/MirfSpiDriver.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/688f25fd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/688f25fd/MirfSpiDriver.o ../../arduino-1.0.5-r2/libraries/Mirf/MirfSpiDriver.cpp

${OBJECTDIR}/_ext/76671b44/ping_client.o: ../../arduino-1.0.5-r2/libraries/Mirf/examples/ping_client/ping_client.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/76671b44
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/76671b44/ping_client.o ../../arduino-1.0.5-r2/libraries/Mirf/examples/ping_client/ping_client.pde

${OBJECTDIR}/_ext/915656bc/ping_server.o: ../../arduino-1.0.5-r2/libraries/Mirf/examples/ping_server/ping_server.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/915656bc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/915656bc/ping_server.o ../../arduino-1.0.5-r2/libraries/Mirf/examples/ping_server/ping_server.pde

${OBJECTDIR}/_ext/c8be9100/ping_server_interupt.o: ../../arduino-1.0.5-r2/libraries/Mirf/examples/ping_server_interupt/ping_server_interupt.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/c8be9100
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c8be9100/ping_server_interupt.o ../../arduino-1.0.5-r2/libraries/Mirf/examples/ping_server_interupt/ping_server_interupt.pde

${OBJECTDIR}/_ext/e46da1d5/reg_read.o: ../../arduino-1.0.5-r2/libraries/Mirf/examples/reg_read/reg_read.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/e46da1d5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e46da1d5/reg_read.o ../../arduino-1.0.5-r2/libraries/Mirf/examples/reg_read/reg_read.pde

${OBJECTDIR}/_ext/6890e083/RF24.o: ../../arduino-1.0.5-r2/libraries/RF24/RF24.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6890e083
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6890e083/RF24.o ../../arduino-1.0.5-r2/libraries/RF24/RF24.cpp

${OBJECTDIR}/_ext/859215b7/GettingStarted.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/GettingStarted/GettingStarted.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/859215b7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/859215b7/GettingStarted.o ../../arduino-1.0.5-r2/libraries/RF24/examples/GettingStarted/GettingStarted.pde

${OBJECTDIR}/_ext/3e273af4/led_remote.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/led_remote/led_remote.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/3e273af4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3e273af4/led_remote.o ../../arduino-1.0.5-r2/libraries/RF24/examples/led_remote/led_remote.pde

${OBJECTDIR}/_ext/98b7c381/nordic_fob.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/nordic_fob/nordic_fob.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/98b7c381
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/98b7c381/nordic_fob.o ../../arduino-1.0.5-r2/libraries/RF24/examples/nordic_fob/nordic_fob.pde

${OBJECTDIR}/_ext/c89c4bc6/pingpair.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair/pingpair.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/c89c4bc6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c89c4bc6/pingpair.o ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair/pingpair.pde

${OBJECTDIR}/_ext/4691ae80/pingpair_dyn.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_dyn/pingpair_dyn.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/4691ae80
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4691ae80/pingpair_dyn.o ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_dyn/pingpair_dyn.pde

${OBJECTDIR}/_ext/4691c06f/pingpair_irq.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_irq/pingpair_irq.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/4691c06f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4691c06f/pingpair_irq.o ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_irq/pingpair_irq.pde

${OBJECTDIR}/_ext/e9540e1c/main.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_maple/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e9540e1c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e9540e1c/main.o ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_maple/main.cpp

${OBJECTDIR}/_ext/e9540e1c/pingpair_maple.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_maple/pingpair_maple.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/e9540e1c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e9540e1c/pingpair_maple.o ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_maple/pingpair_maple.pde

${OBJECTDIR}/_ext/44574915/pingpair_pl.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_pl/pingpair_pl.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/44574915
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/44574915/pingpair_pl.o ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_pl/pingpair_pl.pde

${OBJECTDIR}/_ext/4c00b31b/pingpair_sleepy.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_sleepy/pingpair_sleepy.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/4c00b31b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4c00b31b/pingpair_sleepy.o ../../arduino-1.0.5-r2/libraries/RF24/examples/pingpair_sleepy/pingpair_sleepy.pde

${OBJECTDIR}/_ext/f905972c/scanner.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/scanner/output/scanner.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f905972c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f905972c/scanner.o ../../arduino-1.0.5-r2/libraries/RF24/examples/scanner/output/scanner.cpp

${OBJECTDIR}/_ext/c3848e44/scanner.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/scanner/scanner.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/c3848e44
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c3848e44/scanner.o ../../arduino-1.0.5-r2/libraries/RF24/examples/scanner/scanner.pde

${OBJECTDIR}/_ext/30907f3e/starping.o: ../../arduino-1.0.5-r2/libraries/RF24/examples/starping/starping.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/30907f3e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/30907f3e/starping.o ../../arduino-1.0.5-r2/libraries/RF24/examples/starping/starping.pde

${OBJECTDIR}/_ext/a28098ad/RF24.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/RF24.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a28098ad
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a28098ad/RF24.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/RF24.cpp

${OBJECTDIR}/_ext/9c66fe1/GettingStarted.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/GettingStarted/GettingStarted.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9c66fe1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9c66fe1/GettingStarted.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/GettingStarted/GettingStarted.pde

${OBJECTDIR}/_ext/2c233a1e/led_remote.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/led_remote/led_remote.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/2c233a1e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2c233a1e/led_remote.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/led_remote/led_remote.pde

${OBJECTDIR}/_ext/841d8c5e/nRF24_Arduino_as_hub.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_Arduino_as_hub/nRF24_Arduino_as_hub.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/841d8c5e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/841d8c5e/nRF24_Arduino_as_hub.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_Arduino_as_hub/nRF24_Arduino_as_hub.ino

${OBJECTDIR}/_ext/f2b88e44/nRF24_Serial_Chat.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_Serial_Chat/nRF24_Serial_Chat.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f2b88e44
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f2b88e44/nRF24_Serial_Chat.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_Serial_Chat/nRF24_Serial_Chat.ino

${OBJECTDIR}/_ext/11d7a718/nRF24_sendto_hub.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_sendto_hub/nRF24_sendto_hub.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/11d7a718
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/11d7a718/nRF24_sendto_hub.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nRF24_sendto_hub/nRF24_sendto_hub.ino

${OBJECTDIR}/_ext/86b3c2ab/nordic_fob.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nordic_fob/nordic_fob.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/86b3c2ab
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/86b3c2ab/nordic_fob.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/nordic_fob/nordic_fob.pde

${OBJECTDIR}/_ext/39020d70/pingpair.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair/pingpair.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/39020d70
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/39020d70/pingpair.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair/pingpair.ino

${OBJECTDIR}/_ext/a58a8b2a/pingpair_dyn.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_dyn/pingpair_dyn.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/a58a8b2a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a58a8b2a/pingpair_dyn.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_dyn/pingpair_dyn.pde

${OBJECTDIR}/_ext/a58a9d19/pingpair_irq.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_irq/pingpair_irq.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/a58a9d19
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a58a9d19/pingpair_irq.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_irq/pingpair_irq.pde

${OBJECTDIR}/_ext/6d886846/main.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_maple/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6d886846
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6d886846/main.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_maple/main.cpp

${OBJECTDIR}/_ext/6d886846/pingpair_maple.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_maple/pingpair_maple.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/6d886846
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6d886846/pingpair_maple.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_maple/pingpair_maple.pde

${OBJECTDIR}/_ext/7ef94264/pingpair_multi_dyn.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_multi_dyn/pingpair_multi_dyn.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/7ef94264
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7ef94264/pingpair_multi_dyn.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_multi_dyn/pingpair_multi_dyn.pde

${OBJECTDIR}/_ext/15db2f2b/pingpair_pl.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_pl/pingpair_pl.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/15db2f2b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/15db2f2b/pingpair_pl.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_pl/pingpair_pl.pde

${OBJECTDIR}/_ext/4e579e31/pingpair_sleepy.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_sleepy/pingpair_sleepy.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/4e579e31
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4e579e31/pingpair_sleepy.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/pingpair_sleepy/pingpair_sleepy.pde

${OBJECTDIR}/_ext/7d39f156/scanner.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/scanner/output/scanner.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7d39f156
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7d39f156/scanner.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/scanner/output/scanner.cpp

${OBJECTDIR}/_ext/dfeaef5a/scanner.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/scanner/scanner.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/dfeaef5a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/dfeaef5a/scanner.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/scanner/scanner.pde

${OBJECTDIR}/_ext/a0f640e8/starping.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/starping/starping.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/a0f640e8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a0f640e8/starping.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/examples/starping/starping.pde

${OBJECTDIR}/_ext/c03e2f22/RF24.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/RF24.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c03e2f22
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c03e2f22/RF24.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/RF24.cpp

${OBJECTDIR}/_ext/c03e2f22/bcm2835.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/bcm2835.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/c03e2f22
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c03e2f22/bcm2835.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/bcm2835.c

${OBJECTDIR}/_ext/3f153496/pingtest.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/pingtest.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/3f153496
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3f153496/pingtest.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/pingtest.cpp

${OBJECTDIR}/_ext/3f153496/pongtest.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/pongtest.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/3f153496
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3f153496/pongtest.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/pongtest.cpp

${OBJECTDIR}/_ext/3f153496/rpi-hub.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/rpi-hub.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/3f153496
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3f153496/rpi-hub.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/rpi-hub.cpp

${OBJECTDIR}/_ext/3f153496/scanner.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/scanner.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/3f153496
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3f153496/scanner.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24-bcm/examples/scanner.cpp

${OBJECTDIR}/_ext/c7eac7a3/RF24.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/RF24.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7eac7a3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7eac7a3/RF24.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/RF24.cpp

${OBJECTDIR}/_ext/c7eac7a3/compatibility.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/compatibility.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7eac7a3
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7eac7a3/compatibility.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/compatibility.c

${OBJECTDIR}/_ext/cd159d35/pingtest.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/pingtest.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/cd159d35
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cd159d35/pingtest.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/pingtest.cpp

${OBJECTDIR}/_ext/cd159d35/pongtest.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/pongtest.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/cd159d35
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cd159d35/pongtest.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/pongtest.cpp

${OBJECTDIR}/_ext/cd159d35/rpi-hub.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/rpi-hub.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/cd159d35
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cd159d35/rpi-hub.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/rpi-hub.cpp

${OBJECTDIR}/_ext/cd159d35/scanner.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/scanner.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/cd159d35
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cd159d35/scanner.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/scanner.cpp

${OBJECTDIR}/_ext/cd159d35/sendto_hub.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/sendto_hub.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/cd159d35
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cd159d35/sendto_hub.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/examples/sendto_hub.cpp

${OBJECTDIR}/_ext/c7eac7a3/gpio.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/gpio.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7eac7a3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7eac7a3/gpio.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/gpio.cpp

${OBJECTDIR}/_ext/c7eac7a3/spi.o: ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/spi.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/c7eac7a3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c7eac7a3/spi.o ../../arduino-1.0.5-r2/libraries/RF24_with_Raspberry/librf24-rpi/librf24/spi.cpp

${OBJECTDIR}/_ext/691374f3/EEPROM_AT24C32.o: ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/EEPROM_AT24C32.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/691374f3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/691374f3/EEPROM_AT24C32.o ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/EEPROM_AT24C32.cpp

${OBJECTDIR}/_ext/691374f3/RTClib.o: ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/RTClib.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/691374f3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/691374f3/RTClib.o ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/RTClib.cpp

${OBJECTDIR}/_ext/6c07abed/datecalc.o: ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/datecalc/datecalc.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6c07abed
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6c07abed/datecalc.o ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/datecalc/datecalc.ino

${OBJECTDIR}/_ext/94073422/ds1307.o: ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307/ds1307.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/94073422
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/94073422/ds1307.o ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307/ds1307.ino

${OBJECTDIR}/_ext/9175ffbe/ds1307SqwPin.o: ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307SqwPin/ds1307SqwPin.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9175ffbe
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9175ffbe/ds1307SqwPin.o ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307SqwPin/ds1307SqwPin.ino

${OBJECTDIR}/_ext/d4a38674/ds1307nvram.o: ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307nvram/ds1307nvram.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d4a38674
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d4a38674/ds1307nvram.o ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/ds1307nvram/ds1307nvram.ino

${OBJECTDIR}/_ext/292cfcd/softrtc.o: ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/softrtc/softrtc.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/292cfcd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/292cfcd/softrtc.o ../../arduino-1.0.5-r2/libraries/RTClib_Adafruit_DS1307/examples/softrtc/softrtc.ino

${OBJECTDIR}/_ext/48c405db/Adafruit_GFX.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Adafruit_GFX.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Adafruit_GFX.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Adafruit_GFX.cpp

${OBJECTDIR}/_ext/48c405db/ArduinoRobot.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/ArduinoRobot.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/ArduinoRobot.o ../../arduino-1.0.5-r2/libraries/Robot_Control/ArduinoRobot.cpp

${OBJECTDIR}/_ext/48c405db/Arduino_LCD.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Arduino_LCD.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Arduino_LCD.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Arduino_LCD.cpp

${OBJECTDIR}/_ext/48c405db/Compass.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Compass.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Compass.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Compass.cpp

${OBJECTDIR}/_ext/48c405db/EEPROM_I2C.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/EEPROM_I2C.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/EEPROM_I2C.o ../../arduino-1.0.5-r2/libraries/Robot_Control/EEPROM_I2C.cpp

${OBJECTDIR}/_ext/48c405db/EasyTransfer2.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/EasyTransfer2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/EasyTransfer2.o ../../arduino-1.0.5-r2/libraries/Robot_Control/EasyTransfer2.cpp

${OBJECTDIR}/_ext/48c405db/Fat16.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Fat16.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Fat16.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Fat16.cpp

${OBJECTDIR}/_ext/48c405db/Melody.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Melody.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Melody.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Melody.cpp

${OBJECTDIR}/_ext/48c405db/Motors.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Motors.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Motors.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Motors.cpp

${OBJECTDIR}/_ext/48c405db/Multiplexer.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Multiplexer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Multiplexer.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Multiplexer.cpp

${OBJECTDIR}/_ext/48c405db/RobotSdCard.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/RobotSdCard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/RobotSdCard.o ../../arduino-1.0.5-r2/libraries/Robot_Control/RobotSdCard.cpp

${OBJECTDIR}/_ext/48c405db/SPI.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/SPI.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/SPI.o ../../arduino-1.0.5-r2/libraries/Robot_Control/SPI.cpp

${OBJECTDIR}/_ext/48c405db/SdCard.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/SdCard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/SdCard.o ../../arduino-1.0.5-r2/libraries/Robot_Control/SdCard.cpp

${OBJECTDIR}/_ext/48c405db/Sensors.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Sensors.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Sensors.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Sensors.cpp

${OBJECTDIR}/_ext/48c405db/Squawk.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Squawk.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Squawk.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Squawk.cpp

${OBJECTDIR}/_ext/48c405db/SquawkSD.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/SquawkSD.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/SquawkSD.o ../../arduino-1.0.5-r2/libraries/Robot_Control/SquawkSD.cpp

${OBJECTDIR}/_ext/48c405db/Wire.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/Wire.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/Wire.o ../../arduino-1.0.5-r2/libraries/Robot_Control/Wire.cpp

${OBJECTDIR}/_ext/48c405db/communication.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/communication.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/communication.o ../../arduino-1.0.5-r2/libraries/Robot_Control/communication.cpp

${OBJECTDIR}/_ext/8d647e85/R01_Logo.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R01_Logo/R01_Logo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8d647e85
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8d647e85/R01_Logo.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R01_Logo/R01_Logo.ino

${OBJECTDIR}/_ext/793ddee3/R02_Line_Follow.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R02_Line_Follow/R02_Line_Follow.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/793ddee3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/793ddee3/R02_Line_Follow.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R02_Line_Follow/R02_Line_Follow.ino

${OBJECTDIR}/_ext/9ba6b24a/R03_Disco_Bot.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R03_Disco_Bot/R03_Disco_Bot.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9ba6b24a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9ba6b24a/R03_Disco_Bot.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R03_Disco_Bot/R03_Disco_Bot.ino

${OBJECTDIR}/_ext/e2aaeafb/R04_Compass.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R04_Compass/R04_Compass.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e2aaeafb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e2aaeafb/R04_Compass.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R04_Compass/R04_Compass.ino

${OBJECTDIR}/_ext/609b3fbf/R05_Inputs.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R05_Inputs/R05_Inputs.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/609b3fbf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/609b3fbf/R05_Inputs.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R05_Inputs/R05_Inputs.ino

${OBJECTDIR}/_ext/d3290d11/R06_Wheel_Calibration.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R06_Wheel_Calibration/R06_Wheel_Calibration.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d3290d11
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d3290d11/R06_Wheel_Calibration.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R06_Wheel_Calibration/R06_Wheel_Calibration.ino

${OBJECTDIR}/_ext/d955b870/R07_Runaway_Robot.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R07_Runaway_Robot/R07_Runaway_Robot.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d955b870
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d955b870/R07_Runaway_Robot.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R07_Runaway_Robot/R07_Runaway_Robot.ino

${OBJECTDIR}/_ext/b731f7b7/R08_Remote_Control.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R08_Remote_Control/R08_Remote_Control.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b731f7b7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b731f7b7/R08_Remote_Control.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R08_Remote_Control/R08_Remote_Control.ino

${OBJECTDIR}/_ext/b5c2f3b5/R09_Picture_Browser.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R09_Picture_Browser/R09_Picture_Browser.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b5c2f3b5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b5c2f3b5/R09_Picture_Browser.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R09_Picture_Browser/R09_Picture_Browser.ino

${OBJECTDIR}/_ext/fc57b20f/R10_Rescue.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R10_Rescue/R10_Rescue.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fc57b20f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fc57b20f/R10_Rescue.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R10_Rescue/R10_Rescue.ino

${OBJECTDIR}/_ext/3d5be713/R11_Hello_User.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R11_Hello_User/R11_Hello_User.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/3d5be713
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/3d5be713/R11_Hello_User.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/explore/R11_Hello_User/R11_Hello_User.ino

${OBJECTDIR}/_ext/4c627068/AllIOPorts.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/AllIOPorts/AllIOPorts.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4c627068
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4c627068/AllIOPorts.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/AllIOPorts/AllIOPorts.ino

${OBJECTDIR}/_ext/227d188b/Beep.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Beep/Beep.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/227d188b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/227d188b/Beep.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Beep/Beep.ino

${OBJECTDIR}/_ext/6bae388c/CleanEEPROM.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/CleanEEPROM/CleanEEPROM.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6bae388c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6bae388c/CleanEEPROM.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/CleanEEPROM/CleanEEPROM.ino

${OBJECTDIR}/_ext/c1f3ff95/Compass.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Compass/Compass.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c1f3ff95
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c1f3ff95/Compass.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Compass/Compass.ino

${OBJECTDIR}/_ext/cb71f553/IRArray.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/IRArray/IRArray.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/cb71f553
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cb71f553/IRArray.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/IRArray/IRArray.ino

${OBJECTDIR}/_ext/22d61a0a/LCDDebugPrint.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDDebugPrint/LCDDebugPrint.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/22d61a0a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/22d61a0a/LCDDebugPrint.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDDebugPrint/LCDDebugPrint.ino

${OBJECTDIR}/_ext/c4324abd/LCDPrint.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDPrint/LCDPrint.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/c4324abd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c4324abd/LCDPrint.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDPrint/LCDPrint.ino

${OBJECTDIR}/_ext/8fd519bc/LCDWriteText.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDWriteText/LCDWriteText.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8fd519bc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8fd519bc/LCDWriteText.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LCDWriteText/LCDWriteText.ino

${OBJECTDIR}/_ext/8433438e/LineFollowWithPause.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LineFollowWithPause/LineFollowWithPause.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8433438e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8433438e/LineFollowWithPause.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/LineFollowWithPause/LineFollowWithPause.ino

${OBJECTDIR}/_ext/8a61a80d/Melody.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Melody/Melody.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8a61a80d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8a61a80d/Melody.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/Melody/Melody.ino

${OBJECTDIR}/_ext/5116dc6a/MotorTest.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/MotorTest/MotorTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5116dc6a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5116dc6a/MotorTest.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/MotorTest/MotorTest.ino

${OBJECTDIR}/_ext/b92eec/SpeedByPotentiometer.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/SpeedByPotentiometer/SpeedByPotentiometer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b92eec
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b92eec/SpeedByPotentiometer.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/SpeedByPotentiometer/SpeedByPotentiometer.ino

${OBJECTDIR}/_ext/a84b408c/TurnTest.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/TurnTest/TurnTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a84b408c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a84b408c/TurnTest.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/TurnTest/TurnTest.ino

${OBJECTDIR}/_ext/548fe456/keyboardTest.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/keyboardTest/keyboardTest.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/548fe456
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/548fe456/keyboardTest.o ../../arduino-1.0.5-r2/libraries/Robot_Control/examples/learn/keyboardTest/keyboardTest.ino

${OBJECTDIR}/_ext/48c405db/glcdfont.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/glcdfont.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/glcdfont.o ../../arduino-1.0.5-r2/libraries/Robot_Control/glcdfont.c

${OBJECTDIR}/_ext/48c405db/helper.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/helper.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/helper.o ../../arduino-1.0.5-r2/libraries/Robot_Control/helper.cpp

${OBJECTDIR}/_ext/48c405db/information.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/information.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/information.o ../../arduino-1.0.5-r2/libraries/Robot_Control/information.cpp

${OBJECTDIR}/_ext/48c405db/keyboard.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/keyboard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/keyboard.o ../../arduino-1.0.5-r2/libraries/Robot_Control/keyboard.cpp

${OBJECTDIR}/_ext/48c405db/lcd.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/lcd.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/48c405db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/48c405db/lcd.o ../../arduino-1.0.5-r2/libraries/Robot_Control/lcd.cpp

${OBJECTDIR}/_ext/7cf6c938/RobotTextManager.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/utility/RobotTextManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7cf6c938
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7cf6c938/RobotTextManager.o ../../arduino-1.0.5-r2/libraries/Robot_Control/utility/RobotTextManager.cpp

${OBJECTDIR}/_ext/7cf6c938/VirtualKeyboard.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/utility/VirtualKeyboard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7cf6c938
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7cf6c938/VirtualKeyboard.o ../../arduino-1.0.5-r2/libraries/Robot_Control/utility/VirtualKeyboard.cpp

${OBJECTDIR}/_ext/7cf6c938/twi.o: ../../arduino-1.0.5-r2/libraries/Robot_Control/utility/twi.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/7cf6c938
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7cf6c938/twi.o ../../arduino-1.0.5-r2/libraries/Robot_Control/utility/twi.c

${OBJECTDIR}/_ext/814ae073/ArduinoRobotMotorBoard.o: ../../arduino-1.0.5-r2/libraries/Robot_Motor/ArduinoRobotMotorBoard.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/814ae073
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/814ae073/ArduinoRobotMotorBoard.o ../../arduino-1.0.5-r2/libraries/Robot_Motor/ArduinoRobotMotorBoard.cpp

${OBJECTDIR}/_ext/814ae073/EasyTransfer2.o: ../../arduino-1.0.5-r2/libraries/Robot_Motor/EasyTransfer2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/814ae073
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/814ae073/EasyTransfer2.o ../../arduino-1.0.5-r2/libraries/Robot_Motor/EasyTransfer2.cpp

${OBJECTDIR}/_ext/814ae073/Multiplexer.o: ../../arduino-1.0.5-r2/libraries/Robot_Motor/Multiplexer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/814ae073
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/814ae073/Multiplexer.o ../../arduino-1.0.5-r2/libraries/Robot_Motor/Multiplexer.cpp

${OBJECTDIR}/_ext/9dfdbbef/Robot_IR_Array_Test.o: ../../arduino-1.0.5-r2/libraries/Robot_Motor/examples/Robot_IR_Array_Test/Robot_IR_Array_Test.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9dfdbbef
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9dfdbbef/Robot_IR_Array_Test.o ../../arduino-1.0.5-r2/libraries/Robot_Motor/examples/Robot_IR_Array_Test/Robot_IR_Array_Test.ino

${OBJECTDIR}/_ext/a8de34e8/Robot_Motor_Core.o: ../../arduino-1.0.5-r2/libraries/Robot_Motor/examples/Robot_Motor_Core/Robot_Motor_Core.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/a8de34e8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a8de34e8/Robot_Motor_Core.o ../../arduino-1.0.5-r2/libraries/Robot_Motor/examples/Robot_Motor_Core/Robot_Motor_Core.ino

${OBJECTDIR}/_ext/814ae073/lineFollow.o: ../../arduino-1.0.5-r2/libraries/Robot_Motor/lineFollow.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/814ae073
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/814ae073/lineFollow.o ../../arduino-1.0.5-r2/libraries/Robot_Motor/lineFollow.cpp

${OBJECTDIR}/_ext/bd4769e/File.o: ../../arduino-1.0.5-r2/libraries/SD/File.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/bd4769e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bd4769e/File.o ../../arduino-1.0.5-r2/libraries/SD/File.cpp

${OBJECTDIR}/_ext/bd4769e/SD.o: ../../arduino-1.0.5-r2/libraries/SD/SD.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/bd4769e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bd4769e/SD.o ../../arduino-1.0.5-r2/libraries/SD/SD.cpp

${OBJECTDIR}/_ext/e42f85d3/CardInfo.o: ../../arduino-1.0.5-r2/libraries/SD/examples/CardInfo/CardInfo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e42f85d3
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e42f85d3/CardInfo.o ../../arduino-1.0.5-r2/libraries/SD/examples/CardInfo/CardInfo.ino

${OBJECTDIR}/_ext/f7868e6f/Datalogger.o: ../../arduino-1.0.5-r2/libraries/SD/examples/Datalogger/Datalogger.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f7868e6f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f7868e6f/Datalogger.o ../../arduino-1.0.5-r2/libraries/SD/examples/Datalogger/Datalogger.ino

${OBJECTDIR}/_ext/662cc385/DumpFile.o: ../../arduino-1.0.5-r2/libraries/SD/examples/DumpFile/DumpFile.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/662cc385
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/662cc385/DumpFile.o ../../arduino-1.0.5-r2/libraries/SD/examples/DumpFile/DumpFile.ino

${OBJECTDIR}/_ext/ff5ecca2/Files.o: ../../arduino-1.0.5-r2/libraries/SD/examples/Files/Files.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ff5ecca2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ff5ecca2/Files.o ../../arduino-1.0.5-r2/libraries/SD/examples/Files/Files.ino

${OBJECTDIR}/_ext/6ec5a094/ReadWrite.o: ../../arduino-1.0.5-r2/libraries/SD/examples/ReadWrite/ReadWrite.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6ec5a094
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6ec5a094/ReadWrite.o ../../arduino-1.0.5-r2/libraries/SD/examples/ReadWrite/ReadWrite.ino

${OBJECTDIR}/_ext/f18aa164/listfiles.o: ../../arduino-1.0.5-r2/libraries/SD/examples/listfiles/listfiles.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f18aa164
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f18aa164/listfiles.o ../../arduino-1.0.5-r2/libraries/SD/examples/listfiles/listfiles.ino

${OBJECTDIR}/_ext/10b7c6fb/Sd2Card.o: ../../arduino-1.0.5-r2/libraries/SD/utility/Sd2Card.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/10b7c6fb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/10b7c6fb/Sd2Card.o ../../arduino-1.0.5-r2/libraries/SD/utility/Sd2Card.cpp

${OBJECTDIR}/_ext/10b7c6fb/SdFile.o: ../../arduino-1.0.5-r2/libraries/SD/utility/SdFile.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/10b7c6fb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/10b7c6fb/SdFile.o ../../arduino-1.0.5-r2/libraries/SD/utility/SdFile.cpp

${OBJECTDIR}/_ext/10b7c6fb/SdVolume.o: ../../arduino-1.0.5-r2/libraries/SD/utility/SdVolume.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/10b7c6fb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/10b7c6fb/SdVolume.o ../../arduino-1.0.5-r2/libraries/SD/utility/SdVolume.cpp

${OBJECTDIR}/_ext/6eba5edf/SPI.o: ../../arduino-1.0.5-r2/libraries/SPI/SPI.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba5edf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba5edf/SPI.o ../../arduino-1.0.5-r2/libraries/SPI/SPI.cpp

${OBJECTDIR}/_ext/203774e1/BarometricPressureSensor.o: ../../arduino-1.0.5-r2/libraries/SPI/examples/BarometricPressureSensor/BarometricPressureSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/203774e1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/203774e1/BarometricPressureSensor.o ../../arduino-1.0.5-r2/libraries/SPI/examples/BarometricPressureSensor/BarometricPressureSensor.ino

${OBJECTDIR}/_ext/80128e79/BarometricPressureSensor.o: ../../arduino-1.0.5-r2/libraries/SPI/examples/BarometricPressureSensor/BarometricPressureSensor/BarometricPressureSensor.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/80128e79
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/80128e79/BarometricPressureSensor.o ../../arduino-1.0.5-r2/libraries/SPI/examples/BarometricPressureSensor/BarometricPressureSensor/BarometricPressureSensor.ino

${OBJECTDIR}/_ext/e0f31e4a/DigitalPotControl.o: ../../arduino-1.0.5-r2/libraries/SPI/examples/DigitalPotControl/DigitalPotControl.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e0f31e4a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e0f31e4a/DigitalPotControl.o ../../arduino-1.0.5-r2/libraries/SPI/examples/DigitalPotControl/DigitalPotControl.ino

${OBJECTDIR}/_ext/a9a8578c/Servo.o: ../../arduino-1.0.5-r2/libraries/Servo/Servo.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a9a8578c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a9a8578c/Servo.o ../../arduino-1.0.5-r2/libraries/Servo/Servo.cpp

${OBJECTDIR}/_ext/4a1a7359/Knob.o: ../../arduino-1.0.5-r2/libraries/Servo/examples/Knob/Knob.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4a1a7359
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4a1a7359/Knob.o ../../arduino-1.0.5-r2/libraries/Servo/examples/Knob/Knob.ino

${OBJECTDIR}/_ext/f9a8a669/Sweep.o: ../../arduino-1.0.5-r2/libraries/Servo/examples/Sweep/Sweep.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f9a8a669
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f9a8a669/Sweep.o ../../arduino-1.0.5-r2/libraries/Servo/examples/Sweep/Sweep.ino

${OBJECTDIR}/_ext/90b05f68/SoftwareSerial.o: ../../arduino-1.0.5-r2/libraries/SoftwareSerial/SoftwareSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/90b05f68
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/90b05f68/SoftwareSerial.o ../../arduino-1.0.5-r2/libraries/SoftwareSerial/SoftwareSerial.cpp

${OBJECTDIR}/_ext/4d91a090/SoftwareSerialExample.o: ../../arduino-1.0.5-r2/libraries/SoftwareSerial/examples/SoftwareSerialExample/SoftwareSerialExample.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/4d91a090
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4d91a090/SoftwareSerialExample.o ../../arduino-1.0.5-r2/libraries/SoftwareSerial/examples/SoftwareSerialExample/SoftwareSerialExample.ino

${OBJECTDIR}/_ext/2f75a635/TwoPortReceive.o: ../../arduino-1.0.5-r2/libraries/SoftwareSerial/examples/TwoPortReceive/TwoPortReceive.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2f75a635
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2f75a635/TwoPortReceive.o ../../arduino-1.0.5-r2/libraries/SoftwareSerial/examples/TwoPortReceive/TwoPortReceive.ino

${OBJECTDIR}/_ext/f9cf7a84/Stepper.o: ../../arduino-1.0.5-r2/libraries/Stepper/Stepper.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f9cf7a84
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f9cf7a84/Stepper.o ../../arduino-1.0.5-r2/libraries/Stepper/Stepper.cpp

${OBJECTDIR}/_ext/bc907390/MotorKnob.o: ../../arduino-1.0.5-r2/libraries/Stepper/examples/MotorKnob/MotorKnob.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/bc907390
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bc907390/MotorKnob.o ../../arduino-1.0.5-r2/libraries/Stepper/examples/MotorKnob/MotorKnob.ino

${OBJECTDIR}/_ext/8fff0506/stepper_oneRevolution.o: ../../arduino-1.0.5-r2/libraries/Stepper/examples/stepper_oneRevolution/stepper_oneRevolution.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8fff0506
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8fff0506/stepper_oneRevolution.o ../../arduino-1.0.5-r2/libraries/Stepper/examples/stepper_oneRevolution/stepper_oneRevolution.ino

${OBJECTDIR}/_ext/fd309fd2/stepper_oneStepAtATime.o: ../../arduino-1.0.5-r2/libraries/Stepper/examples/stepper_oneStepAtATime/stepper_oneStepAtATime.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fd309fd2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fd309fd2/stepper_oneStepAtATime.o ../../arduino-1.0.5-r2/libraries/Stepper/examples/stepper_oneStepAtATime/stepper_oneStepAtATime.ino

${OBJECTDIR}/_ext/d042f97f/stepper_speedControl.o: ../../arduino-1.0.5-r2/libraries/Stepper/examples/stepper_speedControl/stepper_speedControl.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d042f97f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d042f97f/stepper_speedControl.o ../../arduino-1.0.5-r2/libraries/Stepper/examples/stepper_speedControl/stepper_speedControl.ino

${OBJECTDIR}/_ext/4c0d4561/streaming_example.o: ../../arduino-1.0.5-r2/libraries/Streaming/Examples/streaming_example/streaming_example.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/4c0d4561
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4c0d4561/streaming_example.o ../../arduino-1.0.5-r2/libraries/Streaming/Examples/streaming_example/streaming_example.pde

${OBJECTDIR}/_ext/6eba6175/TFT.o: ../../arduino-1.0.5-r2/libraries/TFT/TFT.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6eba6175
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6eba6175/TFT.o ../../arduino-1.0.5-r2/libraries/TFT/TFT.cpp

${OBJECTDIR}/_ext/240d2e09/TFTBitmapLogo.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTBitmapLogo/TFTBitmapLogo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/240d2e09
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/240d2e09/TFTBitmapLogo.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTBitmapLogo/TFTBitmapLogo.ino

${OBJECTDIR}/_ext/2816ed22/TFTColorPicker.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTColorPicker/TFTColorPicker.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2816ed22
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2816ed22/TFTColorPicker.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTColorPicker/TFTColorPicker.ino

${OBJECTDIR}/_ext/597ac060/TFTDisplayText.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTDisplayText/TFTDisplayText.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/597ac060
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/597ac060/TFTDisplayText.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTDisplayText/TFTDisplayText.ino

${OBJECTDIR}/_ext/eee9d2ca/TFTEtchASketch.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTEtchASketch/TFTEtchASketch.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/eee9d2ca
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/eee9d2ca/TFTEtchASketch.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTEtchASketch/TFTEtchASketch.ino

${OBJECTDIR}/_ext/6f46f15f/TFTGraph.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTGraph/TFTGraph.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6f46f15f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6f46f15f/TFTGraph.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTGraph/TFTGraph.ino

${OBJECTDIR}/_ext/562fa1c7/TFTPong.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTPong/TFTPong.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/562fa1c7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/562fa1c7/TFTPong.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Arduino/TFTPong/TFTPong.ino

${OBJECTDIR}/_ext/eab40d2f/EsploraTFTBitmapLogo.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTBitmapLogo/EsploraTFTBitmapLogo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/eab40d2f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/eab40d2f/EsploraTFTBitmapLogo.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTBitmapLogo/EsploraTFTBitmapLogo.ino

${OBJECTDIR}/_ext/364bf2bc/EsploraTFTColorPicker.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTColorPicker/EsploraTFTColorPicker.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/364bf2bc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/364bf2bc/EsploraTFTColorPicker.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTColorPicker/EsploraTFTColorPicker.ino

${OBJECTDIR}/_ext/fd1ed864/EsploraTFTEtchASketch.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTEtchASketch/EsploraTFTEtchASketch.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fd1ed864
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fd1ed864/EsploraTFTEtchASketch.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTEtchASketch/EsploraTFTEtchASketch.ino

${OBJECTDIR}/_ext/74aeb279/EsploraTFTGraph.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTGraph/EsploraTFTGraph.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/74aeb279
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/74aeb279/EsploraTFTGraph.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTGraph/EsploraTFTGraph.ino

${OBJECTDIR}/_ext/5b8b0ec1/EsploraTFTHorizion.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTHorizion/EsploraTFTHorizion.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5b8b0ec1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5b8b0ec1/EsploraTFTHorizion.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTHorizion/EsploraTFTHorizion.ino

${OBJECTDIR}/_ext/5e9e556d/EsploraTFTPong.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTPong/EsploraTFTPong.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5e9e556d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5e9e556d/EsploraTFTPong.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTPong/EsploraTFTPong.ino

${OBJECTDIR}/_ext/5ea00149/EsploraTFTTemp.o: ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTTemp/EsploraTFTTemp.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5ea00149
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5ea00149/EsploraTFTTemp.o ../../arduino-1.0.5-r2/libraries/TFT/examples/Esplora/EsploraTFTTemp/EsploraTFTTemp.ino

${OBJECTDIR}/_ext/d18cead2/Adafruit_GFX.o: ../../arduino-1.0.5-r2/libraries/TFT/utility/Adafruit_GFX.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/d18cead2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d18cead2/Adafruit_GFX.o ../../arduino-1.0.5-r2/libraries/TFT/utility/Adafruit_GFX.cpp

${OBJECTDIR}/_ext/d18cead2/Adafruit_ST7735.o: ../../arduino-1.0.5-r2/libraries/TFT/utility/Adafruit_ST7735.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/d18cead2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d18cead2/Adafruit_ST7735.o ../../arduino-1.0.5-r2/libraries/TFT/utility/Adafruit_ST7735.cpp

${OBJECTDIR}/_ext/d18cead2/glcdfont.o: ../../arduino-1.0.5-r2/libraries/TFT/utility/glcdfont.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/d18cead2
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d18cead2/glcdfont.o ../../arduino-1.0.5-r2/libraries/TFT/utility/glcdfont.c

${OBJECTDIR}/_ext/61c02414/Web_AjaxBuzzer.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxBuzzer/Web_AjaxBuzzer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/61c02414
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/61c02414/Web_AjaxBuzzer.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxBuzzer/Web_AjaxBuzzer.ino

${OBJECTDIR}/_ext/2451a7f9/Web_AjaxRGB.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxRGB/Web_AjaxRGB.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/2451a7f9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2451a7f9/Web_AjaxRGB.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxRGB/Web_AjaxRGB.ino

${OBJECTDIR}/_ext/de93aba8/Web_AjaxRGB_mobile.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxRGB_mobile/Web_AjaxRGB_mobile.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/de93aba8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/de93aba8/Web_AjaxRGB_mobile.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_AjaxRGB_mobile/Web_AjaxRGB_mobile.ino

${OBJECTDIR}/_ext/6324df8c/Web_Authentication.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Authentication/Web_Authentication.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/6324df8c
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6324df8c/Web_Authentication.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Authentication/Web_Authentication.ino

${OBJECTDIR}/_ext/8fea47d4/Web_Buzzer.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Buzzer/Web_Buzzer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8fea47d4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8fea47d4/Web_Buzzer.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Buzzer/Web_Buzzer.ino

${OBJECTDIR}/_ext/8bbd83f7/Web_Demo.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Demo/Web_Demo.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/8bbd83f7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8bbd83f7/Web_Demo.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Demo/Web_Demo.ino

${OBJECTDIR}/_ext/716c6cf4/Web_HelloWorld.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_HelloWorld/Web_HelloWorld.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/716c6cf4
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/716c6cf4/Web_HelloWorld.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_HelloWorld/Web_HelloWorld.ino

${OBJECTDIR}/_ext/ec3ce5c7/Web_Image.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Image/Web_Image.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ec3ce5c7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ec3ce5c7/Web_Image.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Image/Web_Image.ino

${OBJECTDIR}/_ext/992513a7/System.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Net_Setup/System.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/992513a7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/992513a7/System.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Net_Setup/System.cpp

${OBJECTDIR}/_ext/992513a7/Web_Net_Setup.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Net_Setup/Web_Net_Setup.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/992513a7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/992513a7/Web_Net_Setup.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Net_Setup/Web_Net_Setup.pde

${OBJECTDIR}/_ext/ec9a5673/Web_Parms.o: ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Parms/Web_Parms.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/ec9a5673
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ec9a5673/Web_Parms.o ../../arduino-1.0.5-r2/libraries/Webduino/examples/Web_Parms/Web_Parms.ino

${OBJECTDIR}/_ext/6893ac62/WiFi.o: ../../arduino-1.0.5-r2/libraries/WiFi/WiFi.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6893ac62
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6893ac62/WiFi.o ../../arduino-1.0.5-r2/libraries/WiFi/WiFi.cpp

${OBJECTDIR}/_ext/6893ac62/WiFiClient.o: ../../arduino-1.0.5-r2/libraries/WiFi/WiFiClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6893ac62
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6893ac62/WiFiClient.o ../../arduino-1.0.5-r2/libraries/WiFi/WiFiClient.cpp

${OBJECTDIR}/_ext/6893ac62/WiFiServer.o: ../../arduino-1.0.5-r2/libraries/WiFi/WiFiServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6893ac62
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6893ac62/WiFiServer.o ../../arduino-1.0.5-r2/libraries/WiFi/WiFiServer.cpp

${OBJECTDIR}/_ext/6893ac62/WiFiUdp.o: ../../arduino-1.0.5-r2/libraries/WiFi/WiFiUdp.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6893ac62
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6893ac62/WiFiUdp.o ../../arduino-1.0.5-r2/libraries/WiFi/WiFiUdp.cpp

${OBJECTDIR}/_ext/33b6f5d5/ConnectNoEncryption.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/ConnectNoEncryption/ConnectNoEncryption.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/33b6f5d5
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/33b6f5d5/ConnectNoEncryption.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/ConnectNoEncryption/ConnectNoEncryption.ino

${OBJECTDIR}/_ext/890b1c6b/ConnectWithWEP.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/ConnectWithWEP/ConnectWithWEP.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/890b1c6b
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/890b1c6b/ConnectWithWEP.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/ConnectWithWEP/ConnectWithWEP.ino

${OBJECTDIR}/_ext/890b1db1/ConnectWithWPA.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/ConnectWithWPA/ConnectWithWPA.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/890b1db1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/890b1db1/ConnectWithWPA.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/ConnectWithWPA/ConnectWithWPA.ino

${OBJECTDIR}/_ext/d33b4bdb/ScanNetworks.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/ScanNetworks/ScanNetworks.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/d33b4bdb
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/d33b4bdb/ScanNetworks.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/ScanNetworks/ScanNetworks.ino

${OBJECTDIR}/_ext/27fd0ea1/SimpleWebServerWiFi.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/SimpleWebServerWiFi/SimpleWebServerWiFi.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/27fd0ea1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/27fd0ea1/SimpleWebServerWiFi.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/SimpleWebServerWiFi/SimpleWebServerWiFi.ino

${OBJECTDIR}/_ext/10adedc9/WiFiChatServer.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiChatServer/WiFiChatServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/10adedc9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/10adedc9/WiFiChatServer.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiChatServer/WiFiChatServer.ino

${OBJECTDIR}/_ext/10895c3f/WiFiPachubeClient.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiPachubeClient/WiFiPachubeClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/10895c3f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/10895c3f/WiFiPachubeClient.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiPachubeClient/WiFiPachubeClient.ino

${OBJECTDIR}/_ext/1bf73d30/WiFiPachubeClientString.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiPachubeClientString/WiFiPachubeClientString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/1bf73d30
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1bf73d30/WiFiPachubeClientString.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiPachubeClientString/WiFiPachubeClientString.ino

${OBJECTDIR}/_ext/b7b74450/WiFiTwitterClient.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiTwitterClient/WiFiTwitterClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/b7b74450
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b7b74450/WiFiTwitterClient.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiTwitterClient/WiFiTwitterClient.ino

${OBJECTDIR}/_ext/7b25eea2/WiFiUdpNtpClient.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiUdpNtpClient/WiFiUdpNtpClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/7b25eea2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7b25eea2/WiFiUdpNtpClient.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiUdpNtpClient/WiFiUdpNtpClient.ino

${OBJECTDIR}/_ext/9bc1a3f9/WiFiUdpSendReceiveString.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiUdpSendReceiveString/WiFiUdpSendReceiveString.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/9bc1a3f9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9bc1a3f9/WiFiUdpSendReceiveString.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiUdpSendReceiveString/WiFiUdpSendReceiveString.ino

${OBJECTDIR}/_ext/28236171/WiFiWebClient.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebClient/WiFiWebClient.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/28236171
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/28236171/WiFiWebClient.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebClient/WiFiWebClient.ino

${OBJECTDIR}/_ext/47e78df6/WiFiWebClientRepeating.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebClientRepeating/WiFiWebClientRepeating.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/47e78df6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/47e78df6/WiFiWebClientRepeating.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebClientRepeating/WiFiWebClientRepeating.ino

${OBJECTDIR}/_ext/43129ce9/WiFiWebServer.o: ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebServer/WiFiWebServer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/43129ce9
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/43129ce9/WiFiWebServer.o ../../arduino-1.0.5-r2/libraries/WiFi/examples/WiFiWebServer/WiFiWebServer.ino

${OBJECTDIR}/_ext/edd6f8bf/server_drv.o: ../../arduino-1.0.5-r2/libraries/WiFi/utility/server_drv.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/edd6f8bf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/edd6f8bf/server_drv.o ../../arduino-1.0.5-r2/libraries/WiFi/utility/server_drv.cpp

${OBJECTDIR}/_ext/edd6f8bf/socket.o: ../../arduino-1.0.5-r2/libraries/WiFi/utility/socket.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/edd6f8bf
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/edd6f8bf/socket.o ../../arduino-1.0.5-r2/libraries/WiFi/utility/socket.c

${OBJECTDIR}/_ext/edd6f8bf/spi_drv.o: ../../arduino-1.0.5-r2/libraries/WiFi/utility/spi_drv.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/edd6f8bf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/edd6f8bf/spi_drv.o ../../arduino-1.0.5-r2/libraries/WiFi/utility/spi_drv.cpp

${OBJECTDIR}/_ext/edd6f8bf/wifi_drv.o: ../../arduino-1.0.5-r2/libraries/WiFi/utility/wifi_drv.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/edd6f8bf
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/edd6f8bf/wifi_drv.o ../../arduino-1.0.5-r2/libraries/WiFi/utility/wifi_drv.cpp

${OBJECTDIR}/_ext/6893b1b2/Wire.o: ../../arduino-1.0.5-r2/libraries/Wire/Wire.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6893b1b2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6893b1b2/Wire.o ../../arduino-1.0.5-r2/libraries/Wire/Wire.cpp

${OBJECTDIR}/_ext/38bcba37/SFRRanger_reader.o: ../../arduino-1.0.5-r2/libraries/Wire/examples/SFRRanger_reader/SFRRanger_reader.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/38bcba37
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/38bcba37/SFRRanger_reader.o ../../arduino-1.0.5-r2/libraries/Wire/examples/SFRRanger_reader/SFRRanger_reader.ino

${OBJECTDIR}/_ext/49bdbfbd/digital_potentiometer.o: ../../arduino-1.0.5-r2/libraries/Wire/examples/digital_potentiometer/digital_potentiometer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/49bdbfbd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/49bdbfbd/digital_potentiometer.o ../../arduino-1.0.5-r2/libraries/Wire/examples/digital_potentiometer/digital_potentiometer.ino

${OBJECTDIR}/_ext/f0c32ef7/master_reader.o: ../../arduino-1.0.5-r2/libraries/Wire/examples/master_reader/master_reader.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/f0c32ef7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f0c32ef7/master_reader.o ../../arduino-1.0.5-r2/libraries/Wire/examples/master_reader/master_reader.ino

${OBJECTDIR}/_ext/fa067aa7/master_writer.o: ../../arduino-1.0.5-r2/libraries/Wire/examples/master_writer/master_writer.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/fa067aa7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fa067aa7/master_writer.o ../../arduino-1.0.5-r2/libraries/Wire/examples/master_writer/master_writer.ino

${OBJECTDIR}/_ext/5384bc80/slave_receiver.o: ../../arduino-1.0.5-r2/libraries/Wire/examples/slave_receiver/slave_receiver.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/5384bc80
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5384bc80/slave_receiver.o ../../arduino-1.0.5-r2/libraries/Wire/examples/slave_receiver/slave_receiver.ino

${OBJECTDIR}/_ext/e43e5d06/slave_sender.o: ../../arduino-1.0.5-r2/libraries/Wire/examples/slave_sender/slave_sender.ino 
	${MKDIR} -p ${OBJECTDIR}/_ext/e43e5d06
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e43e5d06/slave_sender.o ../../arduino-1.0.5-r2/libraries/Wire/examples/slave_sender/slave_sender.ino

${OBJECTDIR}/_ext/9964ae0f/twi.o: ../../arduino-1.0.5-r2/libraries/Wire/utility/twi.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/9964ae0f
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9964ae0f/twi.o ../../arduino-1.0.5-r2/libraries/Wire/utility/twi.c

${OBJECTDIR}/_ext/41b51d62/enc28j60.o: ../../arduino-1.0.5-r2/libraries/etherShield/enc28j60.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/41b51d62
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/41b51d62/enc28j60.o ../../arduino-1.0.5-r2/libraries/etherShield/enc28j60.c

${OBJECTDIR}/_ext/41b51d62/etherShield.o: ../../arduino-1.0.5-r2/libraries/etherShield/etherShield.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/41b51d62
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/41b51d62/etherShield.o ../../arduino-1.0.5-r2/libraries/etherShield/etherShield.cpp

${OBJECTDIR}/_ext/41b51d62/ip_arp_udp_tcp.o: ../../arduino-1.0.5-r2/libraries/etherShield/ip_arp_udp_tcp.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/41b51d62
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/41b51d62/ip_arp_udp_tcp.o ../../arduino-1.0.5-r2/libraries/etherShield/ip_arp_udp_tcp.c

${OBJECTDIR}/_ext/f4ee8f11/enc28j60.o: ../../arduino-1.0.5-r2/libraries/etherShield3/enc28j60.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/f4ee8f11
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f4ee8f11/enc28j60.o ../../arduino-1.0.5-r2/libraries/etherShield3/enc28j60.c

${OBJECTDIR}/_ext/f4ee8f11/etherShield.o: ../../arduino-1.0.5-r2/libraries/etherShield3/etherShield.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/f4ee8f11
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f4ee8f11/etherShield.o ../../arduino-1.0.5-r2/libraries/etherShield3/etherShield.cpp

${OBJECTDIR}/_ext/f4663c83/etherShield_client.o: ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_client/etherShield_client.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/f4663c83
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f4663c83/etherShield_client.o ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_client/etherShield_client.pde

${OBJECTDIR}/_ext/9861540e/etherShield_client1.o: ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_client1/etherShield_client1.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/9861540e
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9861540e/etherShield_client1.o ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_client1/etherShield_client1.pde

${OBJECTDIR}/_ext/6cb2982a/etherShield_ping.o: ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_ping/etherShield_ping.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/6cb2982a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6cb2982a/etherShield_ping.o ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_ping/etherShield_ping.pde

${OBJECTDIR}/_ext/a2526f37/etherShield_web_switch.o: ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_web_switch/etherShield_web_switch.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/a2526f37
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a2526f37/etherShield_web_switch.o ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_web_switch/etherShield_web_switch.pde

${OBJECTDIR}/_ext/62679751/etherShield_web_temperature.o: ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_web_temperature/etherShield_web_temperature.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/62679751
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/62679751/etherShield_web_temperature.o ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_web_temperature/etherShield_web_temperature.pde

${OBJECTDIR}/_ext/68a687df/ethershield_webserver.o: ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_webserver/ethershield_webserver.pde 
	${MKDIR} -p ${OBJECTDIR}/_ext/68a687df
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/68a687df/ethershield_webserver.o ../../arduino-1.0.5-r2/libraries/etherShield3/examples/etherShield_webserver/ethershield_webserver.pde

${OBJECTDIR}/_ext/f4ee8f11/ip_arp_udp_tcp.o: ../../arduino-1.0.5-r2/libraries/etherShield3/ip_arp_udp_tcp.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/f4ee8f11
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f4ee8f11/ip_arp_udp_tcp.o ../../arduino-1.0.5-r2/libraries/etherShield3/ip_arp_udp_tcp.c

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/a4s_arduino.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
