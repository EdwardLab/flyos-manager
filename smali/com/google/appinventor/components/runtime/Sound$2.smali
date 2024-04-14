.class final Lcom/google/appinventor/components/runtime/Sound$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->access$000(Lcom/google/appinventor/components/runtime/Sound;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->access$300(Lcom/google/appinventor/components/runtime/Sound;)V

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->access$400(Lcom/google/appinventor/components/runtime/Sound;)I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->access$410(Lcom/google/appinventor/components/runtime/Sound;)I

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->access$500(Lcom/google/appinventor/components/runtime/Sound;)V

    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->access$200(Lcom/google/appinventor/components/runtime/Sound;)Lcom/google/appinventor/components/runtime/Component;

    move-result-object v1

    const/16 v2, 0x2c6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Sound$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    .line 291
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Sound;->access$600(Lcom/google/appinventor/components/runtime/Sound;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Play"

    .line 290
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
