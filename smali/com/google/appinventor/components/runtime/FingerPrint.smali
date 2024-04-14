.class public final Lcom/google/appinventor/components/runtime/FingerPrint;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component to check for a FingerScanner and read fingerprints from the scanner"
    helpUrl = "https://docs.kodular.io/components/sensors/fingerprint/"
    iconName = "images/fingerprint.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.USE_FINGERPRINT"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

.field private ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/KeyguardManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/os/CancellationSignal;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljavax/crypto/Cipher;

.field private iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

.field private q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

.field private rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:Z

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/TextView;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 94
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:Z

    const-string v0, "Sign in with your fingerprint"

    .line 86
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

    const-string v0, "Scan your finger"

    .line 87
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    .line 95
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    .line 97
    invoke-static {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 98
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/KeyguardManager;

    .line 100
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    .line 101
    new-instance p1, Landroidx/core/os/CancellationSignal;

    invoke-direct {p1}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/os/CancellationSignal;

    const-string p1, "FingerPrint"

    const-string v0, "FingerPrint Created"

    .line 102
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Landroid/app/Dialog;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;Ljava/lang/String;I)V
    .locals 1

    .line 2343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2344
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2345
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:Z

    return p0
.end method


# virtual methods
.method public final Authenticate()V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Authenticate the user with a Fingerprint scanner"
    .end annotation

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const-string v2, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 1277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_3

    .line 1278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    const-string v1, "FingerPrint"

    if-nez v0, :cond_0

    const-string v0, "Fingerprint authentication not supported"

    .line 1279
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "No fingerprint configured."

    .line 1283
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Secure lock screen not enabled"

    .line 1287
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 125
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FingerPrint;->generateKey()V

    .line 126
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FingerPrint;->cipherInit()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljavax/crypto/Cipher;

    invoke-direct {v0, v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 129
    new-instance v0, Lcom/google/appinventor/components/runtime/FingerPrint$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FingerPrint$1;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    .line 193
    new-instance v7, Landroidx/core/os/CancellationSignal;

    invoke-direct {v7}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/os/CancellationSignal;

    .line 194
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    .line 196
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1349
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    .line 1351
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "MaterialIcons-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1355
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    const/4 v4, -0x1

    if-eqz v1, :cond_4

    .line 1357
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 1363
    :cond_4
    :goto_2
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    .line 1364
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1366
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1367
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    if-eqz v6, :cond_5

    const/high16 v6, -0x1000000

    goto :goto_3

    :cond_5
    const/4 v6, -0x1

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1368
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1370
    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/TextView;

    .line 1371
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1373
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/TextView;

    const v5, -0x616162

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1374
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1376
    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    const-string v6, "&#xE90D;"

    .line 1377
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    const/high16 v6, 0x42900000    # 72.0f

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1379
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1383
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1384
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const/16 v5, 0x8

    invoke-static {v2, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1387
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1388
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const/16 v4, 0x18

    invoke-static {v2, v4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 1389
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1390
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1391
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1392
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1394
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    .line 1395
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    new-instance v2, Lcom/google/appinventor/components/runtime/FingerPrint$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/FingerPrint$2;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    new-instance v2, Lcom/google/appinventor/components/runtime/FingerPrint$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/FingerPrint$3;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    new-instance v2, Lcom/google/appinventor/components/runtime/FingerPrint$4;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/FingerPrint$4;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1424
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1425
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1426
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 1427
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const/16 v3, 0x168

    if-le v1, v3, :cond_6

    const/16 v1, 0x168

    :cond_6
    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1428
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1429
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_7
    return-void
.end method

.method public final CancelScan()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel the current Fingerprint Scan"
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final DialogHelpText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the dialog help text"
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    return-object v0
.end method

.method public final DialogHelpText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Scan your finger"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the dialog help text"
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    return-void
.end method

.method public final DialogTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the dialog title"
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

    return-object v0
.end method

.method public final DialogTitle(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Sign in with your fingerprint"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the dialog title"
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

    return-void
.end method

.method public final HasFingerPrintScanner()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "True if hardware is present and functional, false otherwise"
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final HasFingersAdded()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "True if at least one fingerprint is enrolled, false otherwise"
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final LightTheme(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the current theme"
    .end annotation

    .line 235
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    return-void
.end method

.method public final LightTheme()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current theme"
    .end annotation

    .line 240
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:Z

    return v0
.end method

.method public final OnAuthenticationError(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when there is a Authentication Error"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnAuthenticationError"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final OnAuthenticationFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Authentication Failed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnAuthenticationFailed"

    .line 224
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final OnAuthenticationHelp(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when there is a Authentication Help"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnAuthenticationHelp"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final OnAuthenticationSucceeded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Trigger when the Authentication Succeeded"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnAuthenticationSucceeded"

    .line 229
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final UseDialog(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to use a dialog"
    .end annotation

    .line 246
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:Z

    return-void
.end method

.method public final UseDialog()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to use a dialog"
    .end annotation

    .line 251
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:Z

    return v0
.end method

.method public final cipherInit()Z
    .locals 3

    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 325
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;

    const-string v2, "makeroidApp"

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 333
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    .line 338
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to init Cipher"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    const/4 v0, 0x0

    return v0

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    .line 327
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get Cipher"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final generateKey()V
    .locals 4

    const-string v0, "AndroidKeyStore"

    .line 298
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 300
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerPrint"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v1, "AES"

    .line 305
    invoke-static {v1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_5

    .line 311
    :try_start_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 312
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v2, "makeroidApp"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 314
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "PKCS7Padding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 317
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    .line 319
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    .line 307
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get KeyGenerator instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
