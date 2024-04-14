.class public Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "KodularWebRTC"

.field private static final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# instance fields
.field private dataChannel:Lorg/webrtc/DataChannel;

.field dataObserver:Lorg/webrtc/DataChannel$Observer;

.field private first:Z

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private volatile haveLocalDescription:Z

.field private haveOffer:Z

.field private iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile keepPolling:Z

.field observer:Lorg/webrtc/PeerConnection$Observer;

.field private peerConnection:Lorg/webrtc/PeerConnection;

.field private rCode:Ljava/lang/String;

.field private random:Ljava/util/Random;

.field private rendezvousServer:Ljava/lang/String;

.field private rendezvousServer2:Ljava/lang/String;

.field sdpObserver:Lorg/webrtc/SdpObserver;

.field private seenNonces:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 60
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "password"

    const-string v1, "username"

    const-string v2, "server"

    const-string v3, "KodularWebRTC"

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    const/4 v4, 0x0

    .line 68
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    const/4 v5, 0x1

    .line 70
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    .line 71
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    .line 72
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    .line 73
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    const/4 v5, 0x0

    .line 74
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    .line 75
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 76
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    .line 77
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    .line 79
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    .line 82
    new-instance v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    .line 129
    new-instance v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    .line 204
    new-instance v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataObserver:Lorg/webrtc/DataChannel$Observer;

    .line 227
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "OK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p2, "{\"rendezvous2\" : \"rendezvous.creator.kodular.io\",\"iceservers\" : [{ \"server\" : \"turn:turn.creator.kodular.io:3478\",\"username\" : \"kodular\",\"password\" : \"yxUJKuyWzUW6R94uz96jZnAvBpzJSavb\"}]}"

    .line 237
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "rendezvous2"

    .line 238
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    const-string p2, "iceservers"

    .line 239
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 240
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {p2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    .line 241
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v4, p2, :cond_4

    .line 242
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 243
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/webrtc/PeerConnection$IceServer;->builder(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    move-result-object v5

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding iceServer = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 248
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setUsername(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    .line 250
    :cond_2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 251
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setPassword(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    .line 253
    :cond_3
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    invoke-virtual {v5}, Lorg/webrtc/PeerConnection$IceServer$Builder;->createIceServer()Lorg/webrtc/PeerConnection$IceServer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    const-string p2, "parsing iceServers:"

    .line 256
    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private Poller()V
    .locals 11

    const-string v0, "nonce"

    const-string v1, "candidate"

    const-string v2, "KodularWebRTC"

    .line 290
    :try_start_0
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v3, "Poller() Called"

    .line 295
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Poller: rendezvousServer2 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 299
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/rendezvous2/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    .line 305
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 307
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 314
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 318
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    if-nez v3, :cond_2

    const-string v0, "keepPolling is false, we\'re done!"

    .line 320
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response = "

    .line 328
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "Received an empty response"

    .line 333
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 339
    :cond_3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "jsonArray.length() = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 344
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_a

    const-string v5, "i = "

    .line 346
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "element = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 350
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v7, "offer"

    const/4 v8, 0x1

    if-nez v6, :cond_5

    .line 351
    :try_start_4
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 355
    :cond_4
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v5, "sdp"

    .line 356
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    .line 357
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    const-string v6, "sdb = "

    .line 360
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "type = "

    .line 361
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "About to set remote offer"

    .line 362
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Got offer, about to set remote description (maincode)"

    .line 365
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    new-instance v7, Lorg/webrtc/SessionDescription;

    sget-object v9, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    invoke-direct {v7, v9, v5}, Lorg/webrtc/SessionDescription;-><init>(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Lorg/webrtc/PeerConnection;->setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    .line 369
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    new-instance v6, Lorg/webrtc/MediaConstraints;

    invoke-direct {v6}, Lorg/webrtc/MediaConstraints;-><init>()V

    invoke-virtual {v3, v5, v6}, Lorg/webrtc/PeerConnection;->createAnswer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V

    const-string v3, "createAnswer returned"

    .line 371
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_3

    .line 374
    :cond_5
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 375
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    if-nez v6, :cond_6

    const-string v0, "Incoming candidate before local description set, punting"

    .line 377
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 381
    :cond_6
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v3, v3, 0x1

    const-string v5, "skipping offer, already processed"

    .line 384
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 388
    :cond_7
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_2

    .line 393
    :cond_8
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 395
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "sdpMid"

    .line 396
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "sdpMLineIndex"

    .line 397
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 398
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    invoke-virtual {v10, v6}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 399
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    invoke-virtual {v10, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const-string v6, "new nonce, about to add candidate!"

    .line 401
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "candidate = "

    .line 402
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v6, Lorg/webrtc/IceCandidate;

    invoke-direct {v6, v9, v5, v7}, Lorg/webrtc/IceCandidate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 405
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    invoke-virtual {v5, v6}, Lorg/webrtc/PeerConnection;->addIceCandidate(Lorg/webrtc/IceCandidate;)Z

    const-string v5, "addIceCandidate returned"

    .line 407
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    add-int/2addr v3, v8

    goto/16 :goto_1

    :cond_a
    const-string v0, "exited loop"

    .line 414
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v5, :cond_b

    .line 314
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 316
    :cond_b
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Caught Exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Caught JSONException: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception v0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Caught IOException: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sendRendezvous(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/webrtc/DataChannel;)Lorg/webrtc/DataChannel;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/Random;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic access$700()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->Poller()V

    return-void
.end method

.method private sendRendezvous(Lorg/json/JSONObject;)V
    .locals 1

    .line 426
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 262
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 263
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    const/4 p1, 0x0

    .line 265
    invoke-static {p2, p1}, Lorg/webrtc/PeerConnectionFactory;->initializeAndroidGlobals(Landroid/content/Context;Z)V

    .line 267
    new-instance p1, Lorg/webrtc/PeerConnectionFactory$Options;

    invoke-direct {p1}, Lorg/webrtc/PeerConnectionFactory$Options;-><init>()V

    .line 269
    new-instance p2, Lorg/webrtc/PeerConnectionFactory;

    invoke-direct {p2, p1}, Lorg/webrtc/PeerConnectionFactory;-><init>(Lorg/webrtc/PeerConnectionFactory$Options;)V

    .line 271
    new-instance p1, Lorg/webrtc/PeerConnection$RTCConfiguration;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    invoke-direct {p1, p3}, Lorg/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 272
    sget-object p3, Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_CONTINUALLY:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    iput-object p3, p1, Lorg/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    .line 273
    new-instance p3, Lorg/webrtc/MediaConstraints;

    invoke-direct {p3}, Lorg/webrtc/MediaConstraints;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    invoke-virtual {p2, p1, p3, v0}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KodularWebRTC"

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    if-nez v1, :cond_0

    const-string p1, "No Data Channel in Send"

    .line 458
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "UTF-8"

    .line 461
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 462
    new-instance v1, Lorg/webrtc/DataChannel$Buffer;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/webrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 463
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    invoke-virtual {p1, v1}, Lorg/webrtc/DataChannel;->send(Lorg/webrtc/DataChannel$Buffer;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "While encoding data to send to companion"

    .line 465
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
