.class public Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "KodularCompanionUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawerLayoutFix(Landroidx/drawerlayout/widget/DrawerLayout;ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 35
    sget-object p1, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Trying to remove drawerLayout for makeroid companion failed. Reason: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static statusBarColor(Landroid/app/Activity;ZI)V
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    sget-object p1, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Trying to re-add statusbar color."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setStatusBarColor(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 46
    sget-object p1, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Trying to re-add statusbar color failed. Reason: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static toolbarColor(Landroidx/appcompat/widget/Toolbar;ZI)V
    .locals 1

    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    sget-object p1, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Trying to re-add titlebar color."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 57
    sget-object p1, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Trying to re-add titlebar color failed. Reason: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
