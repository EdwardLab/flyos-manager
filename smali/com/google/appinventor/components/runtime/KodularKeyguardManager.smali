.class public Lcom/google/appinventor/components/runtime/KodularKeyguardManager;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/keyguardManager.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.DISABLE_KEYGUARD"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private final androidUIHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->androidUIHandler:Landroid/os/Handler;

    const-string v0, "Unlock"

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    const-string v0, "Confirm your screen lock."

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->activity:Landroid/app/Activity;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->context:Landroid/content/Context;

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->context:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    const-string p1, "Keyguard Manager"

    const-string v0, "Keyguard Manager Created"

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public Description()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the keyguard manager description text."
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    return-object v0
.end method

.method public Description(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Confirm your screen lock."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    return-void
.end method

.method public OnAuthenticationRequest(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect a authentication request was called."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 208
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnAuthenticationRequest"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnDissmissKeyguardRequest(ZZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect a dissmiss request keyguard was called."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "OnDissmissKeyguardRequest"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestDismissKeyguard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If the device is currently locked, requests the Keyguard to be dismissed. Works only for devices with Android 8+"
    .end annotation

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_0
    return-void
.end method

.method public ShowAuthenticationScreen()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create the Confirm Credentials screen. You can customize the title and description. Or we will provide a generic one for you if you leave it empty. Works only for devices with Android 5+"
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->Title()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->Description()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->Description()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->requestCode:I

    .line 136
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method public ShowWhenLocked(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Specifies whether an Activity should be shown on top of the lock screen whenever the lockscreen is up and the activity is resumed. Normally an activity will be transitioned to the stopped state if it is started while the lockscreen is up, but with this flag set the activity will remain in the resumed state visible on-top of the lock screen. "
    .end annotation

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void

    .line 123
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the keyguard manager title text."
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Unlock"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    return-void
.end method

.method public isDeviceLocked()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the device is currently locked and requires a PIN, pattern or password to unlock. Works only for devices with Android 5.1+"
    .end annotation

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceSecure()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the device is secured with a PIN, pattern or password. Works only for devices with Android 6+"
    .end annotation

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return whether the keyguard is currently locked."
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return whether the keyguard is secured by a PIN, pattern or password or a SIM card is currently locked."
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    .line 143
    iget p3, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->requestCode:I

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->androidUIHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$1;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->androidUIHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$2;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$2;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
