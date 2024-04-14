.class final Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularImageUtilities;->LoadImageAsync(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularImageUtilities;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;-><init>(Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;)V

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method
