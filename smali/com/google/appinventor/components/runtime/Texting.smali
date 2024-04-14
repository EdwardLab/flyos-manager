.class public Lcom/google/appinventor/components/runtime/Texting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A component that will, when the <code>SendMessage</code> method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property.</p> <p>If the <code>ReceivingEnabled</code> property is set to 1 messages will <b>not</b> be received. If <code>ReceivingEnabled</code> is set to 2 messages will be received only when the application is running. Finally if <code>ReceivingEnabled</code> is set to 3, messages will be received when the application is running <b>and</b> when the application is not running they will be queued and a notification displayed to the user.</p> <p>When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p> <p> An app that includes this component will receive messages even when it is in the background (i.e. when it\'s not visible on the screen) and, moreso, even if the app is not running, so long as it\'s installed on the phone. If the phone receives a text message when the app is not in the foreground, the phone will show a notification in the notification bar.  Selecting the notification will bring up the app.  As an app developer, you\'ll probably want to give your users the ability to control ReceivingEnabled so that they can make the phone ignore text messages.</p> <p>If the GoogleVoiceEnabled property is true, messages can be sent over Wifi using Google Voice. This option requires that the user have a Google Voice account and that the mobile Voice app is installed on the phone. The Google Voice option works only on phones that support Android 2.0 (Eclair) or higher.</p> <p>To specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces may not be included.</p> <p>Another way for an app to specify a phone number would be to include a <code>PhoneNumberPicker</code> component, which lets the users select a phone numbers from the ones stored in the the phone\'s contacts.</p>"
    iconName = "images/texting.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "google-api-client-beta.jar",
        "google-api-client-android2-beta.jar",
        "google-http-client-beta.jar",
        "google-http-client-android2-beta.jar",
        "google-http-client-android3-beta.jar",
        "google-oauth-client-beta.jar",
        "guava.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "com.google.android.apps.googlevoice.permission.RECEIVE_SMS",
        "com.google.android.apps.googlevoice.permission.SEND_SMS",
        "android.permission.ACCOUNT_MANAGER",
        "android.permission.MANAGE_ACCOUNTS",
        "android.permission.GET_ACCOUNTS",
        "android.permission.USE_CREDENTIALS"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Texting$b;,
        Lcom/google/appinventor/components/runtime/Texting$a;,
        Lcom/google/appinventor/components/runtime/Texting$c;
    }
.end annotation


# static fields
.field private static final CACHE_FILE:Ljava/lang/String; = "textingmsgcache"

.field public static final GV_INTENT_FILTER:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.googlevoice"

.field private static final GV_SERVICE:Ljava/lang/String; = "grandcentral"

.field public static final GV_SMS_RECEIVED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_SMS_SEND_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/sms/send/"

.field public static final GV_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/redirection/voice"

.field private static final MESSAGE_DELIMITER:Ljava/lang/String; = "\u0001"

.field public static final MESSAGE_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.TEXT"

.field public static final META_DATA_SMS_KEY:Ljava/lang/String; = "sms_handler_component"

.field public static final META_DATA_SMS_VALUE:Ljava/lang/String; = "Texting"

.field public static final PHONE_NUMBER_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.PHONE_NUMBER"

.field private static final PREF_FILE:Ljava/lang/String; = "TextingState"

.field private static final PREF_GVENABLED:Ljava/lang/String; = "gvenabled"

.field private static final PREF_RCVENABLED:Ljava/lang/String; = "receiving2"

.field private static final PREF_RCVENABLED_LEGACY:Ljava/lang/String; = "receiving"

.field private static final SENT:Ljava/lang/String; = "SMS_SENT"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TAG:Ljava/lang/String; = "Texting Component"

.field public static final TELEPHONY_INTENT_FILTER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TEXTING_REQUEST_CODE:I = 0x54455854

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static activity:Landroid/app/Activity;

.field private static cacheLock:Ljava/lang/Object;

.field private static component:Lcom/google/appinventor/components/runtime/Component;

.field private static isRunning:Z

.field private static messagesCached:I

.field private static receivingState:Lcom/google/appinventor/components/common/ReceivingState;


# instance fields
.field private authToken:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private googleVoiceEnabled:Z

.field private gvHelper:Lcom/google/appinventor/components/runtime/Texting$c;

.field private havePermission:Z

.field private haveReceivePermission:Z

.field private isInitialized:Z

.field private message:Ljava/lang/String;

.field private pendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private smsManager:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    sget-object v0, Lcom/google/appinventor/components/common/ReceivingState;->Foreground:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 220
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 204
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    .line 210
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    const-string v1, "Texting Component"

    const-string v2, "Texting constructor"

    .line 221
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 223
    sput-object p0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 224
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    .line 226
    sput-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "TextingState"

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "receiving2"

    const/4 v4, -0x1

    .line 228
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    const-string v4, "receiving"

    .line 230
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    sget-object v3, Lcom/google/appinventor/components/common/ReceivingState;->Foreground:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v3, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    goto :goto_0

    .line 233
    :cond_0
    sget-object v3, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v3, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    goto :goto_0

    .line 236
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/common/ReceivingState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v3

    sput-object v3, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    :goto_0
    const-string v3, "gvenabled"

    .line 239
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting with receiving Enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " GV enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    :cond_2
    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v1, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 244
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 248
    :goto_1
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v1, :cond_3

    .line 249
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$a;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$a;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Texting$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    :cond_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    const-string v1, ""

    .line 252
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Texting;->PhoneNumber(Ljava/lang/String;)V

    .line 254
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 255
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 258
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 259
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 260
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 261
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    return-void
.end method

.method public static MessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 420
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Texting Component"

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessageReceived from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    const-string v1, "MessageReceived"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Texting Component"

    const-string p1, "Dispatch successful"

    .line 425
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "Texting Component"

    const-string v1, "Dispatch failed, caching"

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    invoke-static {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/Texting;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/app/Activity;
    .locals 1

    .line 135
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/Texting;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processPendingQueue()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$c;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$c;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$c;)Lcom/google/appinventor/components/runtime/Texting$c;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$c;

    return-object p1
.end method

.method private static addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Texting Component"

    .line 709
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0001"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Caching "

    .line 710
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "textingmsgcache"

    const v1, 0x8000

    .line 711
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 712
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 713
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 714
    sget p0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    const-string p0, "Cached "

    .line 715
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "I/O Error writing to cache file"

    .line 719
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p0, "File not found error writing to cache file"

    .line 717
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCachedMsgCount()I
    .locals 1

    .line 660
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    return v0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 5

    const-string v0, "pdus"

    .line 579
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 580
    array-length v0, p0

    new-array v1, v0, [[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 582
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 583
    aget-object v4, p0, v3

    check-cast v4, [B

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 585
    :cond_0
    new-array p0, v0, [[B

    .line 587
    new-array v3, v0, [Landroid/telephony/SmsMessage;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 589
    aget-object v4, v1, v2

    aput-object v4, p0, v2

    .line 590
    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private declared-synchronized handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 p1, -0x1

    const/4 p2, 0x0

    if-eq p3, p1, :cond_4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "Texting Component"

    const-string p3, "Received no service error, msg:"

    .line 991
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    sget-object p1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string p3, "No Sms service available. Message not sent."

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "Texting Component"

    const-string p3, "Received null PDU error, msg:"

    .line 995
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    sget-object p1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string p3, "Received null PDU error. Message not sent."

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string p2, "Texting Component"

    const-string p3, "Received radio off error, msg:"

    .line 999
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    sget-object p2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string p3, "Could not send SMS message: radio off."

    invoke-static {p2, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1003
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string p1, "Texting Component"

    const-string p3, "Received generic failure, msg:"

    .line 987
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    sget-object p1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string p3, "Generic failure: message not sent"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 989
    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    const-string p1, "Texting Component"

    const-string p3, "Received OK, msg:"

    .line 983
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    sget-object p1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string p3, "Message sent"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 985
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 692
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    if-eqz v0, :cond_0

    .line 693
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 695
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isReceivingEnabled(Landroid/content/Context;)I
    .locals 2

    const-string v0, "TextingState"

    const/4 v1, 0x0

    .line 557
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "receiving2"

    const/4 v1, -0x1

    .line 558
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "receiving"

    const/4 v1, 0x1

    .line 560
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static isRunning()Z
    .locals 1

    .line 652
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    return v0
.end method

.method private processCachedMessages()V
    .locals 7

    .line 601
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->retrieveCachedMessages()[Ljava/lang/String;

    move-result-object v1

    .line 603
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Texting Component"

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cached messages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 608
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 609
    aget-object v3, v1, v2

    const-string v4, "Texting Component"

    .line 610
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message + "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ":"

    .line 612
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 615
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v6, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq v5, v6, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 616
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 617
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 603
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private processPendingQueue()V
    .locals 5

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":::"

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Sending queued message "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Texting Component"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$b;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$b;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/Texting$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestReceiveSmsPermission(Ljava/lang/String;)V
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting$3;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private retrieveCachedMessages()[Ljava/lang/String;
    .locals 5

    const-string v0, "textingmsgcache"

    const-string v1, "Texting Component"

    const-string v2, "Retrieving cached messages"

    .line 628
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 631
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v3

    .line 632
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 633
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 634
    sput v0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    const-string v0, "Retrieved cache "

    .line 635
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u0001"

    .line 643
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    const-string v0, "I/O Error reading from cache file"

    .line 640
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_1
    const-string v0, "No Cache file found -- this is not (usually) an error"

    .line 637
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private sendViaSms(Ljava/lang/String;)V
    .locals 7

    const-string v0, "Texting Component"

    const-string v1, "Sending via built-in Sms"

    .line 1010
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 1016
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$1;

    invoke-direct {v1, p0, v0, p0, p1}, Lcom/google/appinventor/components/runtime/Texting$1;-><init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1036
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1037
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1038
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "SMS_SENT"

    if-ge v1, p1, :cond_1

    .line 1040
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0, v6, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/Texting$2;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Texting$2;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    .line 1057
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1058
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public GoogleVoiceEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "com.google.android.apps.googlevoice.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .line 469
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 470
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gvenabled"

    .line 472
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public GoogleVoiceEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then SendMessage will attempt to send messages over Wifi using Google Voice.  This requires that the Google Voice app must be installed and set up on the phone or tablet, with a Google Voice account.  If GoogleVoiceEnabled is false, the device must have phone and texting service in order to send or receive messages with this component."
    .end annotation

    .line 448
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    return v0
.end method

.method public Initialize()V
    .locals 2

    .line 281
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez v0, :cond_0

    const-string v0, "Initialize"

    .line 283
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Message()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The message that will be sent when the SendMessage method is called."
    .end annotation

    .line 324
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Message set: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number that the message will be sent to when the SendMessage method is called. The number is a text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces should not be included."
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 295
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNumber set: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public ReceivingEnabled()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ReceivingState;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to 1 (OFF) no messages will be received.  If set to 2 (FOREGROUND) or3 (ALWAYS) the component will respond to messages if it is running. If the app is not running then the message will be discarded if set to 2 (FOREGROUND). If set to 3 (ALWAYS) and the app is not running the phone will show a notification.  Selecting the notification will bring up the app and signal the MessageReceived event.  Messages received when the app is dormant will be queued, and so several MessageReceived events might appear when the app awakens.  As an app developer, it would be a good idea to give your users control over this property, so they can make their phones ignore text messages when your app is installed."
    .end annotation

    .line 497
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabledAbstract()Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ReceivingEnabled(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ReceivingState;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "1"
        editorType = "text_receiving"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "android.provider.Telephony.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.RECEIVE_SMS"
        }
    .end annotation

    .line 546
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/ReceivingState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x6a5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 549
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Texting"

    .line 548
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 553
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabledAbstract(Lcom/google/appinventor/components/common/ReceivingState;)V

    return-void
.end method

.method public ReceivingEnabledAbstract()Lcom/google/appinventor/components/common/ReceivingState;
    .locals 1

    .line 505
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    return-object v0
.end method

.method public ReceivingEnabledAbstract(Lcom/google/appinventor/components/common/ReceivingState;)V
    .locals 3

    .line 513
    sput-object p1, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 514
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 516
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "receiving2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "receiving"

    .line 517
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 518
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 519
    sget-object v0, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez p1, :cond_0

    const-string p1, "ReceivingEnabled"

    .line 520
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public SendMessage()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 344
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "smsto:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 345
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    .line 346
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const v1, 0x54455854

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public SendMessageDirect()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.SEND_SMS",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 363
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 366
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v3, :cond_3

    .line 369
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Need to get an authToken -- enqueing "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":::"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Pending message queue full. Can\'t send message"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 383
    new-instance v0, Lcom/google/appinventor/components/runtime/Texting$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Texting$a;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Texting$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    :cond_2
    const-string v3, "Creating AsyncSendMessage"

    .line 387
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$b;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$b;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/Texting$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_3
    const-string v0, "Sending via SMS"

    .line 393
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SendMessage"

    .line 394
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    return-void
.end method

.method public onInitialize()V
    .locals 2

    const-string v0, "Texting Component"

    const-string v1, "onInitialize()"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 273
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 274
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 275
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x21c7

    .line 276
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "Texting Component"

    const-string v1, "onPause()"

    .line 682
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 683
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Texting Component"

    const-string v1, "onResume()"

    .line 668
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 669
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 670
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 672
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x21c7

    .line 673
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1184
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1185
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1186
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "receiving2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1187
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    const-string v2, "gvenabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 2

    const v0, 0x54455854

    if-ne p1, v0, :cond_1

    .line 726
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    const-string v1, "sms_body"

    .line 727
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 726
    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    .line 728
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    :cond_1
    return-void
.end method
