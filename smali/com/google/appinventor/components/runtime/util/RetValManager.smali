.class public Lcom/google/appinventor/components/runtime/util/RetValManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU()V
    .locals 4

    .line 240
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const-string v2, "OK"

    .line 241
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "values"

    .line 242
    new-instance v2, Lorg/json/JSONArray;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->returnRetvals(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RetValManager"

    const-string v2, "Error building retval"

    .line 245
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 52
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "status"

    .line 55
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v2, "return"

    .line 56
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 57
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "blockid"

    .line 58
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    sget-object p0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    .line 64
    sget-object p1, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "RetValManager"

    const-string p2, "Error building retval"

    .line 60
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static assetTransferred(Ljava/lang/String;)V
    .locals 4

    .line 157
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    .line 160
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "assetTransferred"

    .line 161
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string v2, "value"

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :cond_0
    :try_start_2
    sget-object p0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    .line 169
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU()V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "RetValManager"

    const-string v2, "Error building retval"

    .line 165
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 175
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static extensionsLoaded()V
    .locals 4

    .line 183
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    .line 186
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "extensionsLoaded"

    .line 187
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 193
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 199
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "RetValManager"

    const-string v3, "Error building retval"

    .line 189
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 199
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static fetch(Z)Ljava/lang/String;
    .locals 8

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :catch_0
    :goto_0
    :try_start_0
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x26ac

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 218
    :try_start_1
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :cond_0
    :try_start_2
    new-instance p0, Lorg/json/JSONArray;

    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 223
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "status"

    const-string v3, "OK"

    .line 225
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "values"

    .line 226
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    :try_start_4
    sget-object p0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 232
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v2

    return-object p0

    :catch_1
    move-exception p0

    const-string v0, "RetValManager"

    const-string v1, "Error fetching retvals"

    .line 228
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "{\"status\" : \"BAD\", \"message\" : \"Failure in RetValManager\"}"

    .line 229
    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    .line 233
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static popScreen(Ljava/lang/String;)V
    .locals 4

    .line 130
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    .line 133
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "popScreen"

    .line 134
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string v2, "value"

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_0
    :try_start_2
    sget-object p0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    .line 142
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU()V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 148
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "RetValManager"

    const-string v2, "Error building retval"

    .line 138
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 148
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static pushScreen(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 101
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    .line 104
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "pushScreen"

    .line 105
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "screen"

    .line 106
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string p0, "value"

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_0
    :try_start_2
    sget-object p0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    .line 114
    sget-object p1, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU()V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "RetValManager"

    const-string v1, "Error building retval"

    .line 110
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static sendError(Ljava/lang/String;)V
    .locals 4

    .line 74
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    .line 77
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "error"

    .line 78
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "value"

    .line 79
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    sget-object p0, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    .line 85
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 91
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "RetValManager"

    const-string v2, "Error building retval"

    .line 81
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
