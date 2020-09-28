package com.rnxmpp.service;

import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.MessageListener;

import java.util.logging.Level;


import android.util.Log;

public class XmppGroupMessageListenerImpl implements XmppGroupMessageListener, MessageListener {

    XmppServiceListener xmppServiceListener;


    public XmppGroupMessageListenerImpl(XmppServiceListener xmppServiceListener) {
        this.xmppServiceListener = xmppServiceListener;
    }

    public void processMessage(Message message) {
        this.xmppServiceListener.onMessage(message);
        Log.i("react-native-xmpp", "Received a new group message" + message.toString());
    }

}


