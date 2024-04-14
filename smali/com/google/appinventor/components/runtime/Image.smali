.class public final Lcom/google/appinventor/components/runtime/Image;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for displaying images.  The picture to display, and other aspects of the Image\'s appearance, can be specified in the Designer or in the Blocks Editor. You can also add gif images."
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Image"


# instance fields
.field private final appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

.field private clickable:Z

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private imageTintColor:I

.field private picturePath:Ljava/lang/String;

.field private repl:Z

.field private rotationAngle:D

.field private scalingMode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    const v1, 0xffffff

    .line 56
    iput v1, p0, Lcom/google/appinventor/components/runtime/Image;->imageTintColor:I

    .line 57
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    .line 58
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->repl:Z

    .line 63
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->context:Landroid/content/Context;

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/Image$1;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Image;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Image$1;-><init>(Lcom/google/appinventor/components/runtime/Image;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 75
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 77
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->repl:Z

    :cond_0
    const-string p1, "Image"

    const-string v0, "Image component Created"

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Image;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Image;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101030e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 139
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Image;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method


# virtual methods
.method public final Animation(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is a limited form of animation that can attach a small number of motion types to images.  The allowable motions are ScrollRightSlow, ScrollRight, ScrollRightFast, ScrollLeftSlow, ScrollLeft, ScrollLeftFast, and Stop"
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final ClearImageTintColor()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear the image tint color."
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Click\"."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 90
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Clickable(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component clickable or not clickable."
    .end annotation

    .line 101
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    const/16 v0, 0x17

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 105
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Image;->getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Image$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Image$2;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Image$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Image$3;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 123
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    .line 124
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 128
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    return-void
.end method

.method public final Clickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    return v0
.end method

.method public final ImageTintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the image tint color."
    .end annotation

    .line 275
    iget v0, p0, Lcom/google/appinventor/components/runtime/Image;->imageTintColor:I

    return v0
.end method

.method public final ImageTintColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the image tint color. You can use too alpha values if you want with the \'make a list\' block. Do not forget to use the \'make color\' block together with the \'make a list\' block."
    .end annotation

    .line 268
    iput p1, p0, Lcom/google/appinventor/components/runtime/Image;->imageTintColor:I

    .line 269
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Long Click\"."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 95
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public final Picture(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Image$4;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Image$4;-><init>(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestImagePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 178
    :cond_1
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Image"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 189
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 191
    :catch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final RotationAngle()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angle at which the image picture appears rotated. This rotation does not appear on the designer screen, only on the device."
    .end annotation

    .line 212
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    return-wide v0
.end method

.method public final RotationAngle(D)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 199
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V

    .line 205
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    return-void
.end method

.method public final ScalePictureToFit(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be resized to match the size of the ImageView."
    .end annotation

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public final Scaling()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 262
    iget v0, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    return v0
.end method

.method public final Scaling(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property determines how the picture scales according to the Height or Width of the Image. Scale proportionally (0) preserves the picture aspect ratio. Scale to fit (1) matches the Image area, even if the aspect ratio changes."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Illegal scaling mode: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 257
    :goto_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method
