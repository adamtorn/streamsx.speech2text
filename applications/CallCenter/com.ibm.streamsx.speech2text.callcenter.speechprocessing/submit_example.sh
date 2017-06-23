# This is a sample script to submit the jobs built using the sample Makefile
# The main purpose is to highlight the submitjob commands that you will then 
# modify to fit the environment that you are in. 

streamtool submitjob --jobname PacketHandler  --embeddedzk  -P com.ibm.streamsx.speech2text.speechprocessing.callcenter.packethandler::PacketHandler.connHost=127.0.0.1 -P com.ibm.streamsx.speech2text.speechprocessing.callcenter.packethandler::PacketHandler.connPort=33333 -P com.ibm.streamsx.speech2text.speechprocessing.callcenter.packethandler::PacketHandler.controlDiagnostics=/home/streamsadmin/data/  output/packethandler/com.ibm.streamsx.speech2text.speechprocessing.callcenter.packethandler.PacketHandler.sab 

streamtool submitjob --jobname WatsonSpeech2Text1  --embeddedzk -P com.ibm.streamsx.speech2text.speechprocessing.callcenter.watsons2t::WatsonSpeech2Text.diagnostics=/home/streamsadmin/data/ -P com.ibm.streamsx.speech2text.speechprocessing.callcenter.watsons2t::WatsonSpeech2Text.paramsetFile=/home/streamsadmin/toolkits/model/rapid231/EnUS_Telephony_r2.3.1-8kHz-diarization.pset -P com.ibm.streamsx.speech2text.speechprocessing.callcenter.watsons2t::WatsonSpeech2Text.packageFile=/home/streamsadmin/toolkits/model/rapid231/EnUS_Telephony_r2.3.1.pkg -P com.ibm.streamsx.speech2text.speechprocessing.callcenter.watsons2t::WatsonSpeech2Text.utterances=/home/streamsadmin/data/ -P com.ibm.streamsx.speech2text.speechprocessing.callcenter.watsons2t::WatsonSpeech2Text.callCenter=67 output/watsonspeech2text1/com.ibm.streamsx.speech2text.speechprocessing.callcenter.watsons2t.WatsonSpeech2Text.sab

streamtool submitjob --jobname DataCenterSink  --embeddedzk -P com.ibm.streamsx.speech2text.speechprocessing.callcenter.datacentersink::DataCenterSink.connPort=21436 output/datacentersink/com.ibm.streamsx.speech2text.speechprocessing.callcenter.datacentersink.DataCenterSink.sab
