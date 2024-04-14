.class public abstract Lcom/google/appinventor/components/runtime/ButtonBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "spinkit.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:I

.field private static LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:I

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[F


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/Button;

.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private context:Landroid/content/Context;

.field private fontTypeface:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

.field private imagePath:Ljava/lang/String;

.field private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:I

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

.field private moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Z

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

.field private rotationAngle:D

.field private tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

.field private textColor:I

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 68
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[F

    const/4 v0, 0x0

    .line 106
    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:I

    .line 113
    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:I

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 13

    .line 116
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    const v1, -0xbbbbbc

    .line 75
    iput v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const/4 v2, 0x0

    .line 76
    iput v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    .line 77
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    .line 78
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 79
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    const/4 v3, -0x1

    .line 80
    iput v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    .line 81
    iput v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:I

    const v4, -0x616162

    .line 82
    iput v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    const-string v4, ""

    .line 83
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    .line 87
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Z

    const-wide/16 v5, 0x0

    .line 94
    iput-wide v5, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->rotationAngle:D

    .line 117
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    .line 118
    new-instance v7, Landroid/widget/Button;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    .line 119
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 122
    invoke-virtual {v7}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-virtual {v7}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

    .line 124
    invoke-virtual {v7}, Landroid/widget/Button;->getMinWidth()I

    move-result v8

    sput v8, Lcom/google/appinventor/components/runtime/ButtonBase;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:I

    .line 125
    invoke-virtual {v7}, Landroid/widget/Button;->getMinHeight()I

    move-result v8

    sput v8, Lcom/google/appinventor/components/runtime/ButtonBase;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:I

    .line 126
    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/Button;

    .line 128
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f666666    # 0.9f

    invoke-direct {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v11, 0x15e

    .line 129
    invoke-virtual {v8, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 130
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v8, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 132
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v10, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    .line 133
    invoke-virtual {v8, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 134
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v8, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 136
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 138
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 141
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextAlignment(I)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->BackgroundColor(I)V

    .line 148
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Image(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Enabled(Z)V

    .line 150
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 151
    iget p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v8, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v7, p1, v1, v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontSize(F)V

    .line 153
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextColor(I)V

    .line 155
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->Shape(I)V

    const p1, -0x333334

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchColor(I)V

    .line 157
    invoke-virtual {p0, v5, v6}, Lcom/google/appinventor/components/runtime/ButtonBase;->RotationAngle(D)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->BorderShadow(Z)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontBold(Z)V

    .line 160
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontItalic(Z)V

    .line 161
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontTypeface(I)V

    .line 162
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontTypefaceImport(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->Width(I)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->Height(I)V

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    const-string v0, "Left"

    .line 753
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0, p2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 755
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    return-void

    :cond_0
    const-string v0, "Top"

    .line 758
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {p0, v1, p2, v1, v1}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 760
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    return-void

    :cond_1
    const-string v0, "Right"

    .line 763
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 764
    invoke-virtual {p0, v1, v1, p2, v1}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 765
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    return-void

    :cond_2
    const-string v0, "Bottom"

    .line 768
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 769
    invoke-virtual {p0, v1, v1, v1, p2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 770
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    :cond_3
    return-void
.end method

.method private updateAppearance()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 369
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:I

    if-nez v0, :cond_3

    .line 370
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v2, -0xbbbbbc

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0xffffff

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 379
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 373
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    goto :goto_2

    .line 397
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()V

    .line 399
    :goto_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    sget v1, Lcom/google/appinventor/components/runtime/ButtonBase;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:I

    sget v2, Lcom/google/appinventor/components/runtime/ButtonBase;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    return-void

    .line 402
    :cond_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {v0, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    return-void
.end method

.method private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()V
    .locals 4

    .line 410
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 413
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v2, -0xbbbbbc

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "#5a595b"

    .line 414
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 418
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 420
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 428
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 431
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 425
    :cond_3
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 422
    :cond_4
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[F

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 434
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 435
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    invoke-static {v1, v0, v2}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setRippleDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 436
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->setMargin()V

    return-void

    .line 438
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 439
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->setMargin()V

    return-void
.end method


# virtual methods
.method public AnimationStyle(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows you to set animation style. Valid (case-insensitive) values are: ChasingDots, Circle, CubeGrid, DoubleBounce, FadingCircle, FoldingCube, Pulse, RotatingCircle, RotatingPlane, ThreeBounce, WanderingCubes, Wave. If invalid style is used, animation will be removed.Position can be: top, left, right, bottom. Size can be 100. "
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/ProgressHelper;->setButtonProgressAnimation(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1243
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1244
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1245
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .line 351
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the button\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 359
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    .line 360
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    return-void
.end method

.method public BorderShadow(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const-string v0, "ButtonBase"

    if-eqz p1, :cond_1

    .line 626
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    .line 627
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 628
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    const/4 p1, 0x1

    .line 629
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 632
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 636
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 637
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    const/4 p1, 0x0

    .line 638
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 640
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public BorderShadow()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if the button have a outside border shadow on click."
    .end annotation

    .line 648
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Z

    return v0
.end method

.method public ButtonClick()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Perform a button click as function."
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, user can tap check box to cause action."
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 473
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    .line 474
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, button text is displayed in bold."
    .end annotation

    .line 466
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 502
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 503
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, button text is displayed in italics."
    .end annotation

    .line 495
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for button text."
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for button text."
        userVisible = false
    .end annotation

    .line 523
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 530
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    .line 531
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontTypefaceImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    if-eqz p1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved over the button so it is now possible to click it."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    .line 277
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public HTMLFormat(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 562
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    .line 563
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text()Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    return-void
.end method

.method public HTMLFormat()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this button will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .line 555
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    return v0
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image to display on button."
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the button\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 340
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to load "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ButtonBase"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved away from the button so it is now no longer possible to click it."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LostFocus"

    .line 283
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RotationAngle()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the degrees that the button is rotated around the pivot point. Increasing values result in clockwise rotation."
    .end annotation

    .line 261
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->rotationAngle:D

    return-wide v0
.end method

.method public RotationAngle(D)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 253
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->rotationAngle:D

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    double-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setRotation(F)V

    return-void
.end method

.method public SetShadow(FFFI)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Place a blurred shadow of text underneath the text, drawn with the specified x, y, radius, color (e.g. -11, 12, 13, black."
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setShadow(Landroid/widget/TextView;FFFI)V

    return-void
.end method

.method public Shape()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 304
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:I

    return v0
.end method

.method public Shape(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "button_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the button\'s shape (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed."
        userVisible = false
    .end annotation

    .line 314
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:I

    .line 315
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    return-void
.end method

.method public ShowFeedback(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies if a visual feedback should be shown for a button that as an image as background."
    .end annotation

    .line 483
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    return-void
.end method

.method public ShowFeedback()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s visual feedback state"
    .end annotation

    .line 489
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    return v0
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on button."
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 543
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .line 290
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 297
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for button text."
    .end annotation

    .line 570
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 578
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    if-eqz p1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    .line 582
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public TouchColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the buttons touch color."
    .end annotation

    .line 615
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    return v0
.end method

.method public TouchColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the buttons touch color."
    .end annotation

    if-eqz p1, :cond_0

    .line 606
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    return-void

    :cond_0
    const p1, -0x333334

    .line 608
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    return-void
.end method

.method public TouchDown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the button was pressed down."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchDown"

    .line 266
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TouchUp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a button has been released."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchUp"

    .line 271
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WithIconFromFontAwesome(Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show an image on the given position near to the button. You can use following words for the position: \'Left\', \'Right\', \'Top\' or \'Bottom\'. Use the padding to add space between the icon and text. Use a \'FontAwesome\' icon as the button icon without uploading a image resource into your project. You can find the icon code here at https://fontawesome.com/cheatsheet Use as example for a heart icon just \'f004\' or \'&#xf004;\'"
    .end annotation

    const-string v0, ";"

    const-string v1, "&#x"

    const/4 v2, 0x0

    cmpl-float v2, p5, v2

    if-nez v2, :cond_0

    const/high16 p5, 0x42a00000    # 80.0f

    :cond_0
    float-to-int v2, p5

    .line 737
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 738
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 740
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 743
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    const-string v3, "font_awesome"

    invoke-static {v1, v3, p2, p3, p5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->textToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    .line 744
    invoke-virtual {v0, p2, p2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {p2, p1, v0, p4}, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void

    :catch_0
    const-string p1, "ButtonBase"

    const-string p2, "Unable to load the material icon font."

    .line 746
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public WithIconFromMaterialFont(Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show an image on the given position near to the button. You can use following words for the position: \'Left\', \'Right\', \'Top\' or \'Bottom\'. Use the padding to add space between the icon and text. Use a \'Material\' icon as the button icon without uploading a image resource into your project. You can find the icon name here at https://material.io/resources/icons"
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-nez v0, :cond_0

    const/high16 p5, 0x42a00000    # 80.0f

    :cond_0
    float-to-int v0, p5

    .line 714
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    const-string v3, "material"

    invoke-static {v2, v3, p2, p3, p5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->textToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    .line 715
    invoke-virtual {v1, p2, p2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {p2, p1, v1, p4}, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void

    :catch_0
    const-string p1, "ButtonBase"

    const-string p2, "Unable to load the material icon font."

    .line 717
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public WithIconFromPicture(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show an image on the given position near to the button. You can use following words for the position: \'Left\', \'Right\', \'Top\' or \'Bottom\'. Use the padding to add space between the icon and text."
    .end annotation

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    const/16 v1, 0x64

    if-nez p4, :cond_0

    const/16 p4, 0x64

    :cond_0
    if-nez p5, :cond_1

    const/16 p5, 0x64

    :cond_1
    const/4 v1, 0x0

    .line 693
    invoke-virtual {v0, v1, v1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {p2, p1, v0, p3}, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 695
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unable to load "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ButtonBase"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract click()V
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    return-object v0
.end method

.method public longClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 662
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->click()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->GotFocus()V

    return-void

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->LostFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 676
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->longClick()Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    invoke-static {v0, p2, v1}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->prepareRippleDrawable(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 184
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "ButtonBase"

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 187
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 192
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 197
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 204
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    .line 209
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 214
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchUp()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 216
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setMargin()V
    .locals 6

    .line 447
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setMarginToButton(Landroid/widget/Button;Landroid/content/Context;IIII)V

    return-void
.end method
