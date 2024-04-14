.class final Lcom/google/appinventor/components/runtime/Notifier$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->ShowChooseDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$30;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$30;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$30;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier$30;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->AfterChoosing(Ljava/lang/String;)V

    return-void
.end method
