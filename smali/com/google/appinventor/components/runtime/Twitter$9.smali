.class final Lcom/google/appinventor/components/runtime/Twitter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->TweetWithImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic O3i6lk19aLRv6A8OBJmvOyhyWMIS6dBGKDBTsHgoLny1aY87MqdZUecrDONaV4et:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

.field private synthetic uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->O3i6lk19aLRv6A8OBJmvOyhyWMIS6dBGKDBTsHgoLny1aY87MqdZUecrDONaV4et:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "TweetWithImage"

    const-string v1, "file://"

    const/4 v2, 0x0

    .line 526
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Ljava/lang/String;

    .line 528
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 531
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 533
    new-instance v3, Ltwitter4j/StatusUpdate;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->O3i6lk19aLRv6A8OBJmvOyhyWMIS6dBGKDBTsHgoLny1aY87MqdZUecrDONaV4et:Ljava/lang/String;

    invoke-direct {v3, v4}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v3, v1}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    .line 535
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v1

    invoke-interface {v1, v3}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;

    return-void

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    const/16 v4, 0x13b

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 542
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    const/16 v5, 0x132

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    invoke-virtual {v1}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 542
    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
