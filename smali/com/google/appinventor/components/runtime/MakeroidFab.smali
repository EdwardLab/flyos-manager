.class public Lcom/google/appinventor/components/runtime/MakeroidFab;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    helpUrl = "https://docs.kodular.io/components/user-interface/floating-action-button/"
    iconName = "images/fab.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "fabextension.aar",
        "fabextension.jar"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

.field private KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

.field private MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Ljava/lang/String;

.field private XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:I

.field private YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:Z

.field private activity:Landroid/app/Activity;

.field private bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:I

.field private backgroundColor:I

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

.field private hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:I

.field private ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

.field private iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

.field private n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 76
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/16 v0, 0x10

    .line 58
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

    .line 59
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

    const v0, -0xde690e

    .line 60
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->backgroundColor:I

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:I

    const/high16 v1, 0x41200000    # 10.0f

    .line 62
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

    .line 64
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:Z

    const/16 v1, 0x12c

    .line 65
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:I

    const/4 v1, 0x0

    .line 66
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

    const/high16 v1, 0x43b40000    # 360.0f

    .line 67
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:I

    const-string v1, "add"

    .line 69
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;

    .line 70
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:I

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Ljava/lang/String;

    .line 77
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    .line 79
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->context:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-direct {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    .line 82
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->Initialize()V

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V

    const-string p1, "Makeroid Fab"

    const-string v0, "Makeroid Fab Created"

    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Initialize()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Fab"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 109
    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSize(I)V

    .line 111
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    iget v3, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800055

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(I)V

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->backgroundColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->IconName(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 127
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 131
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_2
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidFab$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/MakeroidFab$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFab;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn()V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:I

    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 453
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Fab"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 427
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x42960000    # 75.0f

    .line 428
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 429
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 431
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    const/4 p2, 0x7

    const/4 v1, 0x0

    .line 432
    invoke-static {v0, p2, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V

    .line 434
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    const/16 v1, 0x1e

    invoke-static {p2, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    .line 435
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 437
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

    .line 438
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 440
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 441
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 443
    invoke-static {p1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 445
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFab;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFab;)Lcom/kodular/fabextension/FloatingActionButtonExtension;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    return-object p0
.end method

.method private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s background color."
    .end annotation

    .line 252
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF2196F2"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 245
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->backgroundColor:I

    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public CallFabClickOnTextMessageClick(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true the FAB click listener will be invoked on a text message click."
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0, p1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setCallFabClickOnTextClick(Z)V

    return-void
.end method

.method public CallFabClickOnTextMessageClick()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the FAB click listener will be invoked on a text click."
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isCallFabClickOnTextClick()Z

    move-result v0

    return v0
.end method

.method public CallFabLongClickOnTextMessageLongClick(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true the FAB long click listener will be invoked on a text message long click."
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0, p1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setCallFabLongClickOnTextLongClick(Z)V

    return-void
.end method

.method public CallFabLongClickOnTextMessageLongClick()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the FAB long click listener will be invoked on a text long click."
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isCallFabLongClickOnTextLongClick()Z

    move-result v0

    return v0
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the fab button was clicked."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 178
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Elevation()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 280
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    return v0
.end method

.method public Elevation(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 274
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    return-void
.end method

.method public Hide()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides the fab button."
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

    return-void
.end method

.method public HideTextMessage()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides text message."
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideText()V

    return-void
.end method

.method public HideTextMessageOnTextClick(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Hide the text message when clicking on the message"
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0, p1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setHideTextOnClick(Z)V

    return-void
.end method

.method public HideTextMessageOnTextClick()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the text will hide when clicking on it."
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isHideTextOnClick()Z

    move-result v0

    return v0
.end method

.method public HideTextMessageOnTextLongClick(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Hide the text message after a long click on the text message."
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0, p1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setHideTextOnLongClick(Z)V

    return-void
.end method

.method public HideTextMessageOnTextLongClick()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the text will go hidden after a long click on it."
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isHideTextOnLongClick()Z

    move-result v0

    return v0
.end method

.method public Icon()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The path for the used image in FAB."
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Ljava/lang/String;

    return-object v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    .line 383
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 386
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to load "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Fab"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 387
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public IconColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color for the material icon."
    .end annotation

    .line 423
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:I

    return v0
.end method

.method public IconColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 417
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:I

    .line 418
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn()V

    return-void
.end method

.method public IconName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Use a \'Material\' icon for the fab without uploading a image resource into your project. You can find the icon name here at https://material.io/resources/icons"
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;

    return-object v0
.end method

.method public IconName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "add"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;

    .line 402
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn()V

    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the fab button was long clicked."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 183
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MarginBottom()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s bottom margin."
    .end annotation

    .line 215
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

    return v0
.end method

.method public MarginBottom(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 206
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 208
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->invalidate()V

    return-void
.end method

.method public MarginRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns right margin"
    .end annotation

    .line 199
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

    return v0
.end method

.method public MarginRight(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 190
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->invalidate()V

    return-void
.end method

.method public RippleColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s ripple color."
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRippleColor()I

    move-result v0

    return v0
.end method

.method public RippleColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 260
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:I

    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(I)V

    return-void
.end method

.method public RotationDuration()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s rotation duration in milliseconds."
    .end annotation

    .line 326
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:I

    return v0
.end method

.method public RotationDuration(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "300"
        editorType = "integer"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 320
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:I

    return-void
.end method

.method public RotationEndDegrees()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s rotation end degrees."
    .end annotation

    .line 354
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

    return v0
.end method

.method public RotationEndDegrees(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "360"
        editorType = "float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 348
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

    return-void
.end method

.method public RotationOnClick(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 306
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:Z

    return-void
.end method

.method public RotationOnClick()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if the fab will rotate on click."
    .end annotation

    .line 312
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:Z

    return v0
.end method

.method public RotationStartDegrees()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s rotation start degrees."
    .end annotation

    .line 340
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

    return v0
.end method

.method public RotationStartDegrees(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 334
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

    return-void
.end method

.method public Show()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the fab button."
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

    return-void
.end method

.method public ShowTextMessage()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a new text message near to the fab with the given properties. You can do the changes with the properties in the advanded category."
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->showText()V

    return-void
.end method

.method public ShowTextMessageOnLeftSide(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message to the left side of the floating button. If false the text will be on the right side."
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0, p1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setShowTextOnLeftSide(Z)V

    return-void
.end method

.method public ShowTextMessageOnLeftSide()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return true if the text message is on the left side."
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isShowTextOnLeftSide()Z

    move-result v0

    return v0
.end method

.method public Size()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 238
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:I

    return v0
.end method

.method public Size(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "size"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the size of the button. Use \'1\' for normal, \'2\' for mini or \'3\' for auto size based on the screen size."
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 224
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:I

    .line 225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSize(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 227
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:I

    .line 228
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSize(I)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 230
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:I

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSize(I)V

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->invalidate()V

    return-void
.end method

.method public StartRotationAnimation()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts a rotation animation. You can use the \'Rotation Duration\',\'Rotation Start Degrees\' and \'Rotation End Degrees\' to define the animation. This block will work too if the \'Rotation On Click\' property is disabled."
    .end annotation

    .line 362
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE()V

    return-void
.end method

.method public TextMessageBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the text message background color."
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public TextMessageBackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message background color."
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0, p1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setBackgroundColor(I)V

    return-void
.end method

.method public TextMessageCornerRadius()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the text message corner radius."
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    iget v0, v0, Lcom/kodular/fabextension/FloatingActionButtonExtension;->cornerRadius:F

    return v0
.end method

.method public TextMessageCornerRadius(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message corner radius."
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    iput p1, v0, Lcom/kodular/fabextension/FloatingActionButtonExtension;->cornerRadius:F

    return-void
.end method

.method public TextMessageText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the text message."
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TextMessageText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message."
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0, p1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public TextMessageTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the text message color."
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->getTextColor()I

    move-result v0

    return v0
.end method

.method public TextMessageTextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message color."
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v0, p1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setTextColor(I)V

    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 292
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if the fab button is visible."
    .end annotation

    .line 298
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:Z

    if-eqz p1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->Click()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->LongClick()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOrientationChange()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->Initialize()V

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->invalidateOnOrientationChange()V

    :cond_0
    return-void
.end method
