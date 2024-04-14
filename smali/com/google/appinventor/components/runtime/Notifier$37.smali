.class final Lcom/google/appinventor/components/runtime/Notifier$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

.field private synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$37;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$37;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier$37;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1331
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$37;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$37;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->access$700(Lcom/google/appinventor/components/runtime/Notifier;Landroid/view/View;)V

    .line 1333
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$37;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$37;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->AfterTextInput(Ljava/lang/String;)V

    return-void
.end method
