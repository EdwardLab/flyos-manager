.class public Lcom/google/appinventor/components/runtime/KodularImageUtilities;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    iconName = "images/imageUtilities.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private havePermission:Z

.field private isCompanion:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->isCompanion:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->havePermission:Z

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->androidUIHandler:Landroid/os/Handler;

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->activity:Landroid/app/Activity;

    .line 63
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->isCompanion:Z

    :cond_0
    const-string p1, "Kodular Image Utilities"

    const-string v0, "Kodular Image Utilities Created"

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->isCompanion:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->havePermission:Z

    return p1
.end method


# virtual methods
.method public LoadImageAsync(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a new image from the given path to any component. You can load also images from the internet. Supported components: Image, Buttons, Layouts, Canvas."
    .end annotation

    .line 72
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->havePermission:Z

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTTP://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTTPS://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;-><init>(Lcom/google/appinventor/components/runtime/KodularImageUtilities;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 93
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;-><init>(Lcom/google/appinventor/components/runtime/KodularImageUtilities;Landroid/view/View;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
