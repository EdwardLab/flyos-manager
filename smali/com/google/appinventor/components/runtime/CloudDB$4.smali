.class final Lcom/google/appinventor/components/runtime/CloudDB$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
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

    .line 593
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 604
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 608
    :try_start_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v5, v0

    goto :goto_1

    .line 618
    :cond_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/CloudDB$a;

    .line 623
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-nez v5, :cond_2

    if-eqz v1, :cond_1

    .line 630
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v5, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v10, "765978e4c340012f50733280368a0ccc4a14dfb7"

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v6

    aput-object v3, v8, v9

    aput-object v0, v8, v7

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v4

    invoke-virtual {v2, v5, v10, v9, v8}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 637
    :try_start_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0, v9}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    :cond_1
    :goto_2
    return-void

    .line 1240
    :cond_2
    iget-object v10, v5, Lcom/google/appinventor/components/runtime/CloudDB$a;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Ljava/lang/String;

    .line 1244
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/CloudDB$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/json/JSONArray;

    if-nez v1, :cond_3

    .line 657
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object v2, v5

    move-object v1, v10

    goto :goto_0

    .line 658
    :cond_3
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 659
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 660
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 663
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 667
    iget-object v11, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v12, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v13, "765978e4c340012f50733280368a0ccc4a14dfb7"

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v6

    aput-object v3, v8, v9

    aput-object v2, v8, v7

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-virtual {v11, v12, v13, v9, v8}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 676
    :try_start_5
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :catch_1
    move-exception v0

    .line 669
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0, v9}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 671
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catchall_0
    move-exception v0

    .line 623
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    const-string v1, "CloudDB"

    const-string v2, "Exception in store worker!"

    .line 680
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
