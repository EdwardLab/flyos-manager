.class final Lcom/google/appinventor/components/runtime/Texting$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting$1;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1024
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Texting$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->access$002(Lcom/google/appinventor/components/runtime/Texting;Z)Z

    .line 1025
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Texting$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Texting$1;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->access$100(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    return-void

    .line 1027
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Texting$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Texting$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting$1;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
