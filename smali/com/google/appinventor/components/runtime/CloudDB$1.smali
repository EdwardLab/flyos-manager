.class final Lcom/google/appinventor/components/runtime/CloudDB$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis(Z)Lredis/clients/jedis/Jedis;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    if-eqz v0, :cond_0

    .line 336
    :try_start_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v6, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB;->access$002(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    .line 337
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$000(Lcom/google/appinventor/components/runtime/CloudDB;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v0, v5, v1}, Lredis/clients/jedis/Jedis;->subscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "CloudDB"

    const-string v6, "Error in listener thread"

    .line 339
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :try_start_1
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :catch_1
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catch_2
    nop

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->access$202(Lcom/google/appinventor/components/runtime/CloudDB;Z)Z

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->access$300(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->access$400(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->access$500(Lcom/google/appinventor/components/runtime/CloudDB;)V

    :cond_1
    return-void
.end method
