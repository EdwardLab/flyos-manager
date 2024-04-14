.class public Lcom/google/appinventor/components/runtime/Screenshot;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/screenshot.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Screenshot$a;
    }
.end annotation


# instance fields
.field private Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

.field private RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private dimAmount:F

.field private eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Z

.field private hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaActionSound;

.field private nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:Ljava/lang/String;

.field private tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

.field private uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:Ljava/lang/String;

.field private vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:I

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

.field private wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "Screenshot.png"

    .line 64
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->fileName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

    const-string v2, "Screenshot.."

    .line 71
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Screenshot;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

    const-string v2, "Share"

    .line 72
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Screenshot;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Z

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    .line 85
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    .line 87
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 88
    iput p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->dimAmount:F

    .line 89
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 91
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Screenshot;->vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:I

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 92
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:I

    .line 93
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaActionSound;

    .line 94
    invoke-virtual {p1, v1}, Landroid/media/MediaActionSound;->load(I)V

    const-string p1, "Screenshot"

    const-string v0, "Screenshot Created"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Screenshot;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Screenshot;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Landroid/app/Activity;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Landroid/graphics/Bitmap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Landroid/media/MediaActionSound;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaActionSound;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)V
    .locals 6

    .line 1273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1279
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1280
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1281
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x1e

    .line 1321
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v5, v5, 0xa0

    div-int/2addr v4, v5

    .line 1284
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, -0x1

    .line 1286
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1287
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Screenshot;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1288
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 1290
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1291
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1292
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1297
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1298
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1300
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feb333333333333L    # 0.85

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 1302
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1303
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    .line 1304
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1305
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1306
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1309
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1310
    new-instance v2, Lcom/google/appinventor/components/runtime/Screenshot$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Screenshot$2;-><init>(Lcom/google/appinventor/components/runtime/Screenshot;Landroid/app/AlertDialog;Ljava/util/Timer;)V

    const-wide/16 v3, 0x4e2

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

    return p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Screenshot;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Screenshot;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Z

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Screenshot;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Screenshot;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

    return p0
.end method


# virtual methods
.method public AllowScreenshots(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This feature allows users of your app to make or ban screenshots of their app. If disabled and a person tries to make a screenshot, they will receive then a default system message that this is not possible."
    .end annotation

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public DimAmount()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 362
    iget v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->dimAmount:F

    return v0
.end method

.method public DimAmount(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.5"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the amount of dim behind the preview window if ShowPreview(...) is enabled. Use \'0.0\' for no dim and \'1.0\' for full dim."
    .end annotation

    .line 357
    iput p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->dimAmount:F

    return-void
.end method

.method public FileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the given screenshot filename."
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public FileName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Screenshot.png"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This will be the name for the taken screenshot image file."
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->fileName:Ljava/lang/String;

    return-void
.end method

.method public GotScreenshot(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a screenshot was made by the user. Returns the image path to the taken screenshot."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotScreenshot"

    .line 155
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public NotificationBigStyle(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This will display the notification in a big style."
    .end annotation

    .line 252
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Z

    return-void
.end method

.method public NotificationBigStyle()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the notification big style option status."
    .end annotation

    .line 257
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Z

    return v0
.end method

.method public NotificationShareButton(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will see a notification with a share button after the screenshot is taken."
    .end annotation

    .line 344
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

    return-void
.end method

.method public NotificationShareButton()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 349
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

    return v0
.end method

.method public NotificationShareTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the notification share button text."
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;

    return-object v0
.end method

.method public NotificationShareTitle(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Share"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This will set the notification share button text if the option \"Show Notification\" is enabled."
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;

    return-void
.end method

.method public NotificationTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the notification title."
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

    return-object v0
.end method

.method public NotificationTitle(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Screenshot.."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This will set the notification title if the option \"Show Notification\" is enabled. "
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

    return-void
.end method

.method public SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5

    const-string v0, "Screenshot"

    const/4 v1, 0x0

    .line 172
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 174
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Screenshot;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 178
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 179
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 193
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 195
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v3

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    .line 188
    :goto_1
    :try_start_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 192
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 193
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_4

    :catch_5
    move-exception p1

    .line 186
    :goto_2
    :try_start_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    .line 192
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 193
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_4

    :catch_6
    move-exception p1

    .line 184
    :goto_3
    :try_start_7
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Screenshot;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "TakeScreenshot"

    invoke-virtual {v2, p0, v3, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_0

    .line 192
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 193
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_4

    :catch_7
    move-exception p1

    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_4
    const-string p1, "ERROR"

    .line 199
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:Ljava/lang/String;

    return-object p1

    :goto_5
    if-eqz v1, :cond_1

    .line 192
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 193
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_6

    :catch_8
    move-exception v1

    .line 195
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    :goto_6
    throw p1
.end method

.method public ShowNotification(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will see a notification in the statusbar after the screenshot is taken."
    .end annotation

    .line 218
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

    return-void
.end method

.method public ShowNotification()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if \"Show Notification\" is enabled."
    .end annotation

    .line 223
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

    return v0
.end method

.method public ShowPreview(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will see a short preview animation after the screenshot is taken."
    .end annotation

    .line 207
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Screenshot;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

    return-void
.end method

.method public ShowPreview()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if \"Show Preview\" is enabled."
    .end annotation

    .line 212
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

    return v0
.end method

.method public TakeScreenshot()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take a screenshot of the current visible screen."
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Screenshot$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Screenshot$1;-><init>(Lcom/google/appinventor/components/runtime/Screenshot;)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method public arePermissionsGranted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the write and read permission is granted, else false."
    .end annotation

    .line 326
    iget v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadPermissionGranted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the read permission is granted, else false."
    .end annotation

    .line 332
    iget v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWritePermissionGranted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the write permission is granted, else false."
    .end annotation

    .line 337
    iget v0, p0, Lcom/google/appinventor/components/runtime/Screenshot;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
