.class Lcom/onesignal/PushRegistratorFCM;
.super Lcom/onesignal/PushRegistratorAbstractGoogle;
.source "PushRegistratorFCM.java"


# static fields
.field private static final FCM_APP_NAME:Ljava/lang/String; = "ONESIGNAL_SDK_FCM_APP_NAME"

.field private static final FCM_DEFAULT_API_KEY_BASE64:Ljava/lang/String; = "QUl6YVN5QW5UTG41LV80TWMyYTJQLWRLVWVFLWFCdGd5Q3JqbFlV"

.field private static final FCM_DEFAULT_APP_ID:Ljava/lang/String; = "1:754795614042:android:c682b8144a8dd52bc1ad63"

.field private static final FCM_DEFAULT_PROJECT_ID:Ljava/lang/String; = "onesignal-shared-public"


# instance fields
.field private firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;-><init>()V

    return-void
.end method

.method static disableFirebaseInstanceIdService(Landroid/content/Context;)V
    .locals 5

    const-string v0, "gcm_defaultSenderId"

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 74
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 76
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/firebase/iid/FirebaseInstanceIdService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static getApiKey()Ljava/lang/String;
    .locals 3

    .line 119
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->apiKey:Ljava/lang/String;

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "QUl6YVN5QW5UTG41LV80TWMyYTJQLWRLVWVFLWFCdGd5Q3JqbFlV"

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static getAppId()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->appId:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "1:754795614042:android:c682b8144a8dd52bc1ad63"

    return-object v0
.end method

.method private static getProjectId()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->projectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->projectId:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "onesignal-shared-public"

    return-object v0
.end method

.method private initFirebaseApp(Ljava/lang/String;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/onesignal/PushRegistratorFCM;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    .line 104
    invoke-virtual {v0, p1}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    .line 105
    invoke-static {}, Lcom/onesignal/PushRegistratorFCM;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    .line 106
    invoke-static {}, Lcom/onesignal/PushRegistratorFCM;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    .line 107
    invoke-static {}, Lcom/onesignal/PushRegistratorFCM;->getProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object p1

    .line 109
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v1, "ONESIGNAL_SDK_FCM_APP_NAME"

    invoke-static {v0, p1, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/PushRegistratorFCM;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-void
.end method


# virtual methods
.method getProviderName()Ljava/lang/String;
    .locals 1

    const-string v0, "FCM"

    return-object v0
.end method

.method getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1}, Lcom/onesignal/PushRegistratorFCM;->initFirebaseApp(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/onesignal/PushRegistratorFCM;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    const-string v1, "FCM"

    .line 95
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
