.class public final Lcom/google/appinventor/components/runtime/KodularDynamicImage;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic image in Arrangements."
    iconName = "images/image.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private kodularDynamicModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "KodularDynamicImage"

    .line 35
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->LOG_TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/KodularDynamicImage;Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->setImage(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/KodularDynamicImage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private imagePermissionHelper(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 127
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicImage;Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 141
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->setImage(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V

    return-void
.end method

.method private linearLayoutParams(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    const/4 v0, -0x1

    :cond_1
    :goto_0
    if-ne p2, v3, :cond_2

    const/4 v1, -0x2

    goto :goto_1

    :cond_2
    if-ne p2, v2, :cond_3

    const/4 v1, -0x1

    .line 209
    :cond_3
    :goto_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1
.end method

.method private setImage(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V
    .locals 1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p2, 0x0

    .line 149
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final CreateImage(ILcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new image component dynamically. Use for width/height \'-1\' for wrap content or \'-2\' for fill parent."
    .end annotation

    .line 47
    :try_start_0
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p4, p5}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->linearLayoutParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    new-instance p5, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    invoke-direct {p5, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "CreateImage"

    .line 54
    invoke-direct {p0, v0, p3, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->imagePermissionHelper(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KodularDynamicImage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final DeleteImage(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a image component with the given id."
    .end annotation

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 77
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KodularDynamicImage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final GetHeight(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Height of a image component."
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetImageById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the image referenced by its id."
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    .line 91
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetWidth(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Width of a image component."
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final RotationAngle(ID)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Specifies the angle of a image component with the given id."
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    double-to-float p2, p2

    .line 119
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KodularDynamicImage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final ScalePictureToFit(IZ)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Specifies whether a image component with the given id should be resized to match the size of the ImageView."
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 104
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    .line 106
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 110
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KodularDynamicImage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final SetHeight(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Height of a image component."
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 178
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 179
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final SetWidth(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Width of a image component."
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 159
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final UpdateImage(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update a image component with the given id."
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const-string v0, "UpdateImage"

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->imagePermissionHelper(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KodularDynamicImage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
