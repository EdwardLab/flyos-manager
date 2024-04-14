.class public Lcom/google/appinventor/components/runtime/Slider;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Slider is a progress bar that adds a draggable thumb. You can touch the thumb and drag left or right to set the slider thumb position. As the Slider thumb is dragged, it will trigger the PositionChanged event, reporting the position of the Slider thumb. The reported position of the Slider thumb can be used to dynamically update another component attribute, such as the font size of a TextBox or the radius of a Ball."
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

.field private EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

.field private FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:I

.field private W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

.field private WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:I

.field private bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:I

.field private gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/ClipDrawable;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

.field private kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

.field public final referenceGetThumb:Z

.field private rotationAngle:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .line 79
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xff432d

    .line 65
    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:I

    .line 66
    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:I

    const v1, -0x616162

    .line 67
    iput v1, p0, Lcom/google/appinventor/components/runtime/Slider;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:I

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Slider;->rotationAngle:D

    const/4 v3, 0x1

    .line 71
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Slider;->referenceGetThumb:Z

    .line 80
    new-instance v4, Landroid/widget/SeekBar;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    .line 82
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Slider;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000d

    .line 83
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v5, :cond_0

    .line 84
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Slider;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_0

    .line 86
    :cond_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Slider;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ClipDrawable;

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/ClipDrawable;

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2()V

    .line 92
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 95
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 96
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    const/high16 p1, 0x41f00000    # 30.0f

    .line 97
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    .line 98
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Slider;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

    .line 100
    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/16 p1, 0x64

    .line 101
    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->ThumbColor(I)V

    .line 104
    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/Slider;->RotationAngle(D)V

    .line 109
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb()V

    return-void
.end method

.method private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/ClipDrawable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Slider;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Slider;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

    return p0
.end method

.method private sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb()V
    .locals 3

    .line 142
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    .line 150
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public ColorLeft()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the left of the thumb."
    .end annotation

    .line 311
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:I

    return v0
.end method

.method public ColorLeft(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF00BCD3"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 326
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:I

    .line 327
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2()V

    return-void
.end method

.method public ColorRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the left of the thumb."
    .end annotation

    .line 342
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:I

    return v0
.end method

.method public ColorRight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF9E9E9E"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 357
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:I

    .line 358
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2()V

    return-void
.end method

.method public Height()I
    .locals 1

    .line 454
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public MaxValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the slider max value."
        userVisible = true
    .end annotation

    .line 295
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    return v0
.end method

.method public MaxValue(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the maximum value of slider.  Changing the maximum value also resets Thumbposition to be halfway between the minimum and the (new) maximum. If the new maximum is less than the current minimum, then minimum and maximum will both be set to this value.  Setting MaxValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .line 278
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    .line 279
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    .line 284
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    return-void
.end method

.method public MinValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the value of slider min value."
        userVisible = true
    .end annotation

    .line 266
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    return v0
.end method

.method public MinValue(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the minimum value of slider.  Changing the minimum value also resets Thumbposition to be halfway between the (new) minimum and the maximum. If the new minimum is greater than the current maximum, then minimum and maximum will both be set to this value.  Setting MinValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .line 247
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    .line 249
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    .line 254
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    return-void
.end method

.method public PositionChanged(F)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "PositionChanged"

    invoke-static {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public RotationAngle()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the degrees that the slider is rotated around the pivot point. Increasing values result in clockwise rotation."
    .end annotation

    .line 165
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Slider;->rotationAngle:D

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

    .line 158
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Slider;->rotationAngle:D

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    double-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setRotation(F)V

    return-void
.end method

.method public ThumbColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the color of slider thumb."
    .end annotation

    .line 391
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:I

    return v0
.end method

.method public ThumbColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF00BCD3"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of slider thumb. This block works only on devices with api >= 16."
    .end annotation

    .line 380
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:I

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public ThumbEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether or not to display the slider thumb."
        userVisible = true
    .end annotation

    .line 178
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Slider;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

    .line 179
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    new-instance v0, Lcom/google/appinventor/components/runtime/Slider$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Slider$1;-><init>(Lcom/google/appinventor/components/runtime/Slider;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public ThumbEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether or not the slider thumb is being be shown"
        userVisible = true
    .end annotation

    .line 201
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

    return v0
.end method

.method public ThumbImage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Slider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ThumbPosition()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the position of slider thumb"
        userVisible = true
    .end annotation

    .line 234
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    return v0
.end method

.method public ThumbPosition(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the position of the slider thumb. If this value is greater than MaxValue, then it will be set to same value as MaxValue. If this value is less than MinValue, then it will be set to same value as MinValue."
        userVisible = true
    .end annotation

    .line 219
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    .line 222
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb()V

    .line 223
    iget p1, p0, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    return-void
.end method

.method public TouchDown()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked on a touch down."
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TouchDown"

    invoke-static {v0, p0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public TouchUp()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked on a touch up."
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TouchUp"

    invoke-static {v0, p0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 405
    iget p1, p0, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    iget p3, p0, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    sub-float/2addr p1, p3

    int-to-float p2, p2

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    add-float/2addr p1, p3

    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    .line 414
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 427
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->TouchDown()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 437
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->TouchUp()V

    return-void
.end method
