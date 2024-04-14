.class public Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
.super Lredis/clients/jedis/JedisPubSub;
.source "SourceFile"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "CloudDB"


# instance fields
.field public cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lredis/clients/jedis/JedisPubSub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 49
    :try_start_0
    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 53
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    .line 54
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 66
    sget-object p2, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onMessage: JSONException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "System Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public terminate()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
