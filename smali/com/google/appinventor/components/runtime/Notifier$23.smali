.class final Lcom/google/appinventor/components/runtime/Notifier$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->CustomChooseDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

.field private synthetic jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$23;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Notifier$23;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier$23;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$23;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier$23;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier$23;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->GotCustomChooseDialog(ILjava/lang/String;)V

    return-void
.end method
