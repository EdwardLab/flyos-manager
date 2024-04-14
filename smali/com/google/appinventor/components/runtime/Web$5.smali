.class final Lcom/google/appinventor/components/runtime/Web$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Ljava/lang/String;

.field private synthetic EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Ljava/lang/String;

.field private synthetic KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

.field private synthetic uH6uduDO6igztP3NRwiG3B3RKi1dfrI0ueZUUY55UetixycZYkIQUqODMskIlYYu:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$5;->KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$5;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Web$5;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/Web$5;->uH6uduDO6igztP3NRwiG3B3RKi1dfrI0ueZUUY55UetixycZYkIQUqODMskIlYYu:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$5;->KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 589
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v0

    .line 599
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$5;->uH6uduDO6igztP3NRwiG3B3RKi1dfrI0ueZUUY55UetixycZYkIQUqODMskIlYYu:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$5;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web;->access$800(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 594
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Ljava/lang/String;

    const/16 v3, 0x44e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$5;->KQG8OTRvHbMOByZu4oimrjMQImUXcBx4aj5wSGopdAdeTIpEFw8C79s3zi6NeXhR:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
