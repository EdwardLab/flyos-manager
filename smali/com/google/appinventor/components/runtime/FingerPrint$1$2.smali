.class final Lcom/google/appinventor/components/runtime/FingerPrint$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FingerPrint$1;->onAuthenticationHelp(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FingerPrint$1;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Ljava/lang/String;

    move-result-object v1

    const v2, -0x616162

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;Ljava/lang/String;I)V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/FingerPrint;->Authenticate()V

    return-void
.end method
