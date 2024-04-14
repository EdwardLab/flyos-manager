.class public Lcom/google/appinventor/components/runtime/ImageEditor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that allows users to edit images."
    iconName = "images/imageEditor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "NewImage.png"

    .line 57
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->havePermission:Z

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    const-string p1, "ImageEditor"

    const-string v0, "ImageEditor Created"

    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->havePermission:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v0, "Save"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PERMISSION_DENIED_ERROR"

    return-object p1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 880
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 881
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 884
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 885
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 886
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageEditor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5

    const-string v0, "ImageEditor"

    const/4 v1, 0x0

    .line 109
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 114
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 115
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 126
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 128
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

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 121
    :goto_1
    :try_start_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 125
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 126
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 128
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    const-string p1, "ERROR"

    return-object p1

    :catch_5
    move-exception p1

    .line 118
    :goto_3
    :try_start_5
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Save"

    invoke-virtual {v2, p0, v3, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    const-string p1, "PERMISSION_DENIED_ERROR"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 125
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 126
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v1

    .line 128
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    return-object p1

    :goto_5
    if-eqz v1, :cond_2

    .line 125
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 126
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 128
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_2
    :goto_6
    throw p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ImageEditor;)Z
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->havePermission:Z

    return v0
.end method


# virtual methods
.method public BlurEffect(Ljava/lang/String;FI)Ljava/lang/String;
    .locals 38
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This methods creates a blur effect."
    .end annotation

    move/from16 v0, p3

    .line 663
    invoke-direct/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 666
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 667
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    .line 668
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 670
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 676
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 677
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v14, v2, v13

    .line 679
    new-array v15, v14, [I

    .line 680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "ImageEditor"

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    move-object v6, v15

    move v8, v2

    move-object/from16 v16, v11

    move v11, v2

    move-object/from16 v17, v12

    move v12, v13

    .line 681
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v13, -0x1

    add-int v7, v0, v0

    add-int/2addr v7, v3

    .line 688
    new-array v8, v14, [I

    .line 689
    new-array v9, v14, [I

    .line 690
    new-array v10, v14, [I

    .line 692
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [I

    add-int/lit8 v12, v7, 0x1

    shr-int/2addr v12, v3

    mul-int v12, v12, v12

    shl-int/lit8 v4, v12, 0x8

    .line 696
    new-array v3, v4, [I

    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 698
    div-int v19, v1, v12

    aput v19, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    const/4 v4, 0x2

    new-array v12, v4, [I

    const/16 v19, 0x1

    aput v1, v12, v19

    const/4 v1, 0x0

    aput v7, v12, v1

    .line 703
    const-class v1, I

    invoke-static {v1, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    add-int/lit8 v12, v0, 0x1

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_1
    if-ge v4, v13, :cond_7

    move/from16 v22, v14

    neg-int v14, v0

    move/from16 v31, v13

    move v13, v14

    const/4 v14, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_2
    if-gt v13, v0, :cond_4

    move/from16 v32, v6

    move-object/from16 v33, v11

    const/4 v6, 0x0

    .line 711
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int v11, v20, v11

    aget v11, v15, v11

    add-int v34, v13, v0

    .line 712
    aget-object v34, v1, v34

    move-object/from16 v35, v15

    shr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    .line 713
    aput v15, v34, v6

    shr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    const/16 v36, 0x1

    .line 714
    aput v15, v34, v36

    and-int/lit16 v11, v11, 0xff

    const/4 v15, 0x2

    .line 715
    aput v11, v34, v15

    .line 716
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v11, v12, v11

    .line 717
    aget v37, v34, v6

    mul-int v6, v37, v11

    add-int/2addr v14, v6

    .line 718
    aget v6, v34, v36

    mul-int v19, v6, v11

    add-int v23, v23, v19

    .line 719
    aget v34, v34, v15

    mul-int v11, v11, v34

    add-int v24, v24, v11

    if-lez v13, :cond_3

    add-int v28, v28, v37

    add-int v29, v29, v6

    add-int v30, v30, v34

    goto :goto_3

    :cond_3
    add-int v25, v25, v37

    add-int v26, v26, v6

    add-int v27, v27, v34

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v32

    move-object/from16 v11, v33

    move-object/from16 v15, v35

    goto :goto_2

    :cond_4
    move/from16 v32, v6

    move-object/from16 v33, v11

    move-object/from16 v35, v15

    move v11, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_6

    .line 734
    aget v13, v3, v14

    aput v13, v8, v20

    .line 735
    aget v13, v3, v23

    aput v13, v9, v20

    .line 736
    aget v13, v3, v24

    aput v13, v10, v20

    sub-int v14, v14, v25

    sub-int v23, v23, v26

    sub-int v24, v24, v27

    sub-int v13, v11, v0

    add-int/2addr v13, v7

    .line 743
    rem-int/2addr v13, v7

    aget-object v13, v1, v13

    const/4 v15, 0x0

    .line 745
    aget v34, v13, v15

    sub-int v25, v25, v34

    const/4 v15, 0x1

    .line 746
    aget v34, v13, v15

    sub-int v26, v26, v34

    const/16 v19, 0x2

    .line 747
    aget v34, v13, v19

    sub-int v27, v27, v34

    if-nez v4, :cond_5

    add-int v34, v6, v0

    move-object/from16 v36, v3

    add-int/lit8 v3, v34, 0x1

    .line 750
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v33, v6

    goto :goto_5

    :cond_5
    move-object/from16 v36, v3

    .line 752
    :goto_5
    aget v3, v33, v6

    add-int v3, v21, v3

    aget v3, v35, v3

    shr-int/lit8 v15, v3, 0x10

    and-int/lit16 v15, v15, 0xff

    const/16 v34, 0x0

    .line 754
    aput v15, v13, v34

    move/from16 v34, v5

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    const/16 v37, 0x1

    .line 755
    aput v5, v13, v37

    and-int/lit16 v3, v3, 0xff

    const/16 v19, 0x2

    .line 756
    aput v3, v13, v19

    add-int v28, v28, v15

    add-int v29, v29, v5

    add-int v30, v30, v3

    add-int v14, v14, v28

    add-int v23, v23, v29

    add-int v24, v24, v30

    add-int/lit8 v11, v11, 0x1

    .line 766
    rem-int/2addr v11, v7

    .line 767
    rem-int v3, v11, v7

    aget-object v3, v1, v3

    const/4 v5, 0x0

    .line 769
    aget v13, v3, v5

    add-int v25, v25, v13

    const/4 v5, 0x1

    .line 770
    aget v15, v3, v5

    add-int v26, v26, v15

    const/4 v5, 0x2

    .line 771
    aget v3, v3, v5

    add-int v27, v27, v3

    sub-int v28, v28, v13

    sub-int v29, v29, v15

    sub-int v30, v30, v3

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v34

    move-object/from16 v3, v36

    goto/16 :goto_4

    :cond_6
    move-object/from16 v36, v3

    move/from16 v34, v5

    add-int v21, v21, v2

    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v22

    move/from16 v13, v31

    move/from16 v6, v32

    move-object/from16 v11, v33

    move-object/from16 v15, v35

    goto/16 :goto_1

    :cond_7
    move-object/from16 v36, v3

    move/from16 v32, v6

    move-object/from16 v33, v11

    move/from16 v31, v13

    move/from16 v22, v14

    move-object/from16 v35, v15

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_d

    neg-int v4, v0

    mul-int v5, v4, v2

    move/from16 v24, v2

    move v2, v5

    move/from16 v23, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v7, v4

    const/4 v4, 0x0

    :goto_7
    if-gt v7, v0, :cond_a

    move/from16 v25, v14

    const/4 v14, 0x0

    .line 785
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v26

    add-int v26, v26, v3

    add-int v27, v7, v0

    .line 787
    aget-object v27, v1, v27

    .line 789
    aget v28, v8, v26

    aput v28, v27, v14

    .line 790
    aget v14, v9, v26

    const/16 v28, 0x1

    aput v14, v27, v28

    .line 791
    aget v14, v10, v26

    const/16 v19, 0x2

    aput v14, v27, v19

    .line 793
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v14

    sub-int v14, v12, v14

    .line 795
    aget v28, v8, v26

    mul-int v28, v28, v14

    add-int v4, v4, v28

    .line 796
    aget v28, v9, v26

    mul-int v28, v28, v14

    add-int v5, v5, v28

    .line 797
    aget v26, v10, v26

    mul-int v26, v26, v14

    add-int v6, v6, v26

    if-lez v7, :cond_8

    const/4 v14, 0x0

    .line 800
    aget v26, v27, v14

    add-int v15, v15, v26

    const/16 v26, 0x1

    .line 801
    aget v28, v27, v26

    add-int v20, v20, v28

    const/16 v19, 0x2

    .line 802
    aget v27, v27, v19

    add-int v21, v21, v27

    move/from16 v26, v4

    move/from16 v14, v25

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    const/16 v19, 0x2

    const/16 v26, 0x1

    .line 804
    aget v28, v27, v14

    add-int v11, v11, v28

    .line 805
    aget v14, v27, v26

    add-int/2addr v13, v14

    .line 806
    aget v14, v27, v19

    add-int v14, v25, v14

    move/from16 v26, v4

    :goto_8
    move/from16 v4, v32

    if-ge v7, v4, :cond_9

    add-int v2, v2, v24

    :cond_9
    add-int/lit8 v7, v7, 0x1

    move/from16 v32, v4

    move/from16 v4, v26

    goto :goto_7

    :cond_a
    move/from16 v26, v4

    move/from16 v25, v14

    move/from16 v4, v32

    move/from16 v27, v0

    move/from16 v7, v31

    const/4 v2, 0x0

    move/from16 v25, v3

    :goto_9
    if-ge v2, v7, :cond_c

    const/high16 v28, -0x1000000

    .line 817
    aget v29, v35, v25

    and-int v28, v29, v28

    aget v29, v36, v26

    shl-int/lit8 v29, v29, 0x10

    or-int v28, v28, v29

    aget v29, v36, v5

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    aget v29, v36, v6

    or-int v28, v28, v29

    aput v28, v35, v25

    sub-int v26, v26, v11

    sub-int/2addr v5, v13

    sub-int/2addr v6, v14

    sub-int v28, v27, v0

    add-int v28, v28, v23

    .line 824
    rem-int v28, v28, v23

    aget-object v28, v1, v28

    const/16 v29, 0x0

    .line 826
    aget v30, v28, v29

    sub-int v11, v11, v30

    const/16 v29, 0x1

    .line 827
    aget v30, v28, v29

    sub-int v13, v13, v30

    const/16 v19, 0x2

    .line 828
    aget v29, v28, v19

    sub-int v14, v14, v29

    if-nez v3, :cond_b

    add-int v0, v2, v12

    .line 831
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v24

    aput v0, v33, v2

    .line 833
    :cond_b
    aget v0, v33, v2

    add-int/2addr v0, v3

    .line 835
    aget v29, v8, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    .line 836
    aget v30, v9, v0

    const/16 v31, 0x1

    aput v30, v28, v31

    .line 837
    aget v0, v10, v0

    const/16 v19, 0x2

    aput v0, v28, v19

    add-int v15, v15, v29

    add-int v20, v20, v30

    add-int v21, v21, v0

    add-int v26, v26, v15

    add-int v5, v5, v20

    add-int v6, v6, v21

    add-int/lit8 v27, v27, 0x1

    .line 847
    rem-int v27, v27, v23

    .line 848
    aget-object v0, v1, v27

    const/16 v28, 0x0

    .line 850
    aget v29, v0, v28

    add-int v11, v11, v29

    const/16 v30, 0x1

    .line 851
    aget v31, v0, v30

    add-int v13, v13, v31

    const/16 v19, 0x2

    .line 852
    aget v0, v0, v19

    add-int/2addr v14, v0

    sub-int v15, v15, v29

    sub-int v20, v20, v31

    sub-int v21, v21, v0

    add-int v25, v25, v24

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p3

    goto/16 :goto_9

    :cond_c
    const/16 v19, 0x2

    const/16 v28, 0x0

    const/16 v30, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p3

    move/from16 v32, v4

    move/from16 v31, v7

    move/from16 v7, v23

    move/from16 v2, v24

    goto/16 :goto_6

    :cond_d
    move/from16 v24, v2

    move/from16 v7, v31

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v18

    move-object/from16 v6, v35

    move v2, v7

    move v7, v0

    move v8, v1

    move v11, v1

    move v12, v2

    .line 863
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    .line 864
    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ColorBoostEffect(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Color boost technique is basically based on color filtering, which is to increase the intensity of a single color channel. For example: type = green/ blue or red; percent = 40%."
    .end annotation

    move-object/from16 v0, p2

    .line 601
    invoke-direct/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 604
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 605
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 606
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_4

    .line 612
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 613
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 614
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 615
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 616
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    const-string v12, "red"

    .line 617
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, 0xff

    if-eqz v12, :cond_1

    int-to-float v10, v10

    add-float v12, p3, v13

    mul-float v10, v10, v12

    float-to-int v10, v10

    if-le v10, v14, :cond_3

    const/16 v10, 0xff

    goto :goto_2

    :cond_1
    const-string v12, "green"

    .line 621
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    int-to-float v11, v11

    add-float v12, p3, v13

    mul-float v11, v11, v12

    float-to-int v11, v11

    if-le v11, v14, :cond_3

    const/16 v11, 0xff

    goto :goto_2

    :cond_2
    const-string v12, "blue"

    .line 625
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    int-to-float v8, v8

    add-float v12, p3, v13

    mul-float v8, v8, v12

    float-to-int v8, v8

    if-le v8, v14, :cond_3

    const/16 v8, 0xff

    .line 629
    :cond_3
    :goto_2
    invoke-static {v9, v10, v11, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    move-object v6, p0

    .line 632
    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ColorFilter(Ljava/lang/String;DDD)Ljava/lang/String;
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a color filter to your image. For example: red = 30; green = 40; blue = 20."
    .end annotation

    .line 294
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 297
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 298
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 300
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    .line 306
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 308
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 309
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-double v9, v9

    mul-double v9, v9, p2

    double-to-int v9, v9

    .line 310
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-double v10, v10

    mul-double v10, v10, p4

    double-to-int v10, v10

    .line 311
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-double v11, v7

    mul-double v11, v11, p6

    double-to-int v7, v11

    .line 312
    invoke-static {v8, v9, v10, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v5, p0

    .line 315
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FlipPicture(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Flip your image vertical or horizontal. For example: type = 1 (vertical); type = 2 (horizontal)."
    .end annotation

    .line 186
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 189
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 p1, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p2, p1, :cond_1

    .line 191
    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 195
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 202
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public GammaEffect(Ljava/lang/String;DDD)Ljava/lang/String;
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a gamma effect to your image. For example: red = 5; green = 10; blue = 20."
    .end annotation

    .line 409
    invoke-direct/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 412
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 414
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 415
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0x100

    new-array v5, v4, [I

    new-array v6, v4, [I

    new-array v7, v4, [I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_1

    int-to-double v10, v9

    const-wide v12, 0x406fe00000000000L    # 255.0

    div-double/2addr v10, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v5

    div-double v4, v14, p2

    .line 431
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, v12

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double v4, v4, v17

    double-to-int v4, v4

    const/16 v5, 0xff

    .line 430
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v16, v9

    move/from16 v19, v9

    div-double v8, v14, p4

    .line 433
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v12

    add-double v8, v8, v17

    double-to-int v8, v8

    .line 432
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v6, v19

    div-double v14, v14, p6

    .line 435
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v12

    add-double v8, v8, v17

    double-to-int v8, v8

    .line 434
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v7, v19

    add-int/lit8 v9, v19, 0x1

    move-object/from16 v5, v16

    const/16 v4, 0x100

    goto :goto_0

    :cond_1
    move-object/from16 v16, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_2

    .line 441
    invoke-virtual {v0, v5, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 442
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 444
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v11

    aget v11, v16, v11

    .line 445
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    aget v12, v6, v12

    .line 446
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    aget v9, v7, v9

    .line 448
    invoke-static {v10, v11, v12, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v1, v5, v8, v9}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v5, p0

    .line 451
    invoke-direct {v5, v1}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GreyscaleEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Grayscale is a simple image effect that changes colors to grayscale by default."
    .end annotation

    .line 146
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 151
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 154
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 155
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 156
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x3

    .line 157
    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 158
    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public HighlightEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a highlight effect to your image."
    .end annotation

    .line 386
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 389
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x60

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x60

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 391
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 393
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 394
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    const/high16 v5, 0x41700000    # 15.0f

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 396
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 397
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, -0x1

    .line 398
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    aget v3, v4, v3

    int-to-float v3, v3

    const/4 v6, 0x1

    aget v4, v4, v6

    int-to-float v4, v4

    .line 399
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 400
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 402
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 404
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public HueFilter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the hue of an image. For example: level = 1 or 2 or 3 or 4 etc."
    .end annotation

    .line 490
    invoke-direct/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 493
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 494
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v1, v8, v9

    .line 495
    new-array v10, v1, [I

    const/4 v1, 0x3

    new-array v11, v1, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 498
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    mul-int v3, v1, v8

    add-int/2addr v3, v2

    .line 507
    aget v4, v10, v3

    invoke-static {v4, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v4, v11, v0

    move/from16 v5, p2

    int-to-float v6, v5

    mul-float v4, v4, v6

    aput v4, v11, v0

    const-wide/16 v6, 0x0

    float-to-double v12, v4

    const-wide v14, 0x4076800000000000L    # 360.0

    .line 510
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v4, v6

    aput v4, v11, v0

    .line 512
    aget v4, v10, v3

    invoke-static {v11}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    or-int/2addr v4, v6

    aput v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v10

    move v4, v8

    move v7, v8

    move v8, v9

    .line 517
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v1, p0

    .line 518
    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ImageRotation(Ljava/lang/String;F)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the image to the degree you need it. For example: degree = 100."
    .end annotation

    .line 590
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 593
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 594
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 595
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 596
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Initialize()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/ImageEditor$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ImageEditor$1;-><init>(Lcom/google/appinventor/components/runtime/ImageEditor;)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method public InvertEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This effect inverts your image."
    .end annotation

    .line 245
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 257
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 258
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 259
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    rsub-int v8, v8, 0xff

    .line 260
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    rsub-int v9, v9, 0xff

    .line 261
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    rsub-int v6, v6, 0xff

    .line 262
    invoke-static {v7, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v0, v5, v4, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public MergeTwoImages(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This methods creates a new side by side horizontal image."
    .end annotation

    .line 893
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 894
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 900
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 901
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    .line 903
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 906
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 907
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1

    .line 909
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 912
    :goto_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 913
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 915
    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 916
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p2, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 918
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    const-string p1, ""

    return-object p1
.end method

.method public Pixelate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This methods creates a pixelate image effect. Use as example as pixelation Amount \'1\' for a hugh pixel effect and \'99\' for a almost not visible pixel effect."
    .end annotation

    .line 869
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 872
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 873
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 874
    div-int/lit8 v2, v0, 0x64

    mul-int v2, v2, p2

    div-int/lit8 v3, v1, 0x64

    mul-int v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 876
    invoke-static {p1, v0, v1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public RoundCorner(Ljava/lang/String;F)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a round corner to your image. For example: round = 45."
    .end annotation

    .line 361
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 364
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 367
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 368
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 370
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 371
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v6, -0x1000000

    .line 372
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 375
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 377
    invoke-virtual {v3, v0, p2, p2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 378
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 379
    invoke-virtual {v3, p1, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 381
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SaveNewImageAs()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Save the new created image to a folder/ name of your choice"
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    return-object v0
.end method

.method public SaveNewImageAs(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "NewImage.png"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Save the new created image to a folder/ name of your choice."
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageEditor;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    return-void
.end method

.method public ScaleCenterCrop(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This methods creates a new scale center crop image."
    .end annotation

    .line 637
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 640
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 641
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, p3

    int-to-float v0, v0

    div-float v3, v2, v0

    int-to-float v4, p2

    int-to-float v1, v1

    div-float v5, v4, v1

    .line 645
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v0, v0, v3

    mul-float v3, v3, v1

    sub-float/2addr v2, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    sub-float/2addr v4, v3

    div-float/2addr v4, v1

    .line 653
    new-instance v1, Landroid/graphics/RectF;

    add-float/2addr v0, v2

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 654
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p3, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 655
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 656
    invoke-virtual {p3, p1, v0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 658
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SepiaToningEffect(Ljava/lang/String;IDDD)Ljava/lang/String;
    .locals 18
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a sepia toning effect to your image. For example: depth = 20; red = 10; green = 20; blue = 25."
    .end annotation

    .line 320
    invoke-direct/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 323
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 324
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 326
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    .line 336
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 338
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 339
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v9

    .line 340
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 341
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    const-wide v11, 0x3fd3333333333333L    # 0.3

    int-to-double v13, v9

    mul-double v13, v13, v11

    const-wide v11, 0x3fe2e147ae147ae1L    # 0.59

    int-to-double v9, v10

    mul-double v9, v9, v11

    add-double/2addr v13, v9

    const-wide v9, 0x3fbc28f5c28f5c29L    # 0.11

    int-to-double v11, v7

    mul-double v11, v11, v9

    add-double/2addr v13, v11

    double-to-int v7, v13

    int-to-double v9, v7

    move/from16 v7, p2

    int-to-double v11, v7

    mul-double v13, v11, p3

    add-double/2addr v13, v9

    double-to-int v13, v13

    const/16 v14, 0xff

    if-le v13, v14, :cond_1

    const/16 v13, 0xff

    :cond_1
    mul-double v15, v11, p5

    move/from16 v17, v5

    add-double v4, v9, v15

    double-to-int v4, v4

    if-le v4, v14, :cond_2

    const/16 v4, 0xff

    :cond_2
    mul-double v11, v11, p7

    add-double/2addr v9, v11

    double-to-int v5, v9

    if-le v5, v14, :cond_3

    goto :goto_2

    :cond_3
    move v14, v5

    .line 353
    :goto_2
    invoke-static {v8, v13, v4, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    move/from16 v5, v17

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move/from16 v7, p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v4, p0

    .line 356
    invoke-direct {v4, v3}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetBrightness(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the brightness of your image. For example: value = 50 (maximum = 255=100% brightness)."
    .end annotation

    .line 207
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_8

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_7

    .line 219
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 220
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 221
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 222
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 223
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v8, p2

    const/16 v10, 0xff

    if-le v8, v10, :cond_1

    const/16 v8, 0xff

    goto :goto_2

    :cond_1
    if-gez v8, :cond_2

    const/4 v8, 0x0

    :cond_2
    :goto_2
    add-int/2addr v9, p2

    if-le v9, v10, :cond_3

    const/16 v9, 0xff

    goto :goto_3

    :cond_3
    if-gez v9, :cond_4

    const/4 v9, 0x0

    :cond_4
    :goto_3
    add-int/2addr v6, p2

    if-le v6, v10, :cond_5

    goto :goto_4

    :cond_5
    if-gez v6, :cond_6

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    move v10, v6

    .line 237
    :goto_4
    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    :cond_8
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetColorDepth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the color depth of an image as you wish. For example: bitOffset = 32 (bit) or bitOffset = 16 (bit)."
    .end annotation

    .line 456
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 459
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_4

    .line 469
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 470
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 471
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 472
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 473
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 475
    div-int/lit8 v10, p2, 0x2

    add-int/2addr v8, v10

    rem-int v11, v8, p2

    sub-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_1

    const/4 v8, 0x0

    :cond_1
    add-int/2addr v9, v10

    .line 477
    rem-int v11, v9, p2

    sub-int/2addr v9, v11

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_2

    const/4 v9, 0x0

    :cond_2
    add-int/2addr v6, v10

    .line 479
    rem-int v10, v6, p2

    sub-int/2addr v6, v10

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_3

    const/4 v6, 0x0

    .line 482
    :cond_3
    invoke-static {v7, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 485
    :cond_5
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetContrast(Ljava/lang/String;F)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This changes the contrast of your image. For example: value = 1.0 means normal picture contrast. Below 1.0 like as example 0.7 means dark contrast, above 1.0 as example 1.5 means light contrast."
    .end annotation

    .line 166
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 169
    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput p2, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v3, v1, v2

    const/16 v2, 0xa

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput p2, v1, v2

    const/16 p2, 0xd

    aput v3, v1, p2

    const/16 p2, 0xe

    aput v3, v1, p2

    const/16 p2, 0xf

    aput v3, v1, p2

    const/16 p2, 0x10

    aput v3, v1, p2

    const/16 p2, 0x11

    aput v3, v1, p2

    const/16 p2, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, p2

    const/16 p2, 0x13

    aput v3, v1, p2

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 176
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 178
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 179
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ShadingFilter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make a new image with a shading filter. For example: shadingColor = green(rgb value)."
    .end annotation

    .line 270
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 275
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 277
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    mul-int v3, v1, v8

    add-int/2addr v3, v2

    .line 283
    aget v4, v10, v3

    and-int/2addr v4, p2

    aput v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 288
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 289
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public TintColorEffect(Ljava/lang/String;I)Ljava/lang/String;
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "That\'s a pretty new other cool effect. It changes the tint color of your image. For example: degree = 100."
    .end annotation

    .line 546
    invoke-direct/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v0, ""

    return-object v0

    .line 549
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 550
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v0, v9, v10

    .line 552
    new-array v11, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v11

    move v3, v9

    move v6, v9

    move v7, v10

    .line 553
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const-wide v0, 0x400921f9f01b866eL    # 3.14159

    move/from16 v2, p2

    int-to-double v2, v2

    mul-double v2, v2, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v0

    .line 558
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    mul-double v0, v0, v4

    double-to-int v0, v0

    .line 559
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v4

    double-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_7

    mul-int v5, v3, v9

    add-int/2addr v5, v4

    .line 564
    aget v6, v11, v5

    shr-int/lit8 v7, v6, 0x10

    const/16 v12, 0xff

    and-int/2addr v7, v12

    shr-int/lit8 v13, v6, 0x8

    and-int/2addr v13, v12

    and-int/2addr v6, v12

    mul-int/lit8 v14, v7, 0x46

    mul-int/lit8 v13, v13, 0x3b

    sub-int/2addr v14, v13

    mul-int/lit8 v15, v6, 0xb

    sub-int/2addr v14, v15

    .line 567
    div-int/lit8 v14, v14, 0x64

    mul-int/lit8 v16, v7, -0x1e

    sub-int v16, v16, v13

    mul-int/lit8 v6, v6, 0x59

    add-int v16, v16, v6

    .line 568
    div-int/lit8 v16, v16, 0x64

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v7, v13

    add-int/2addr v7, v15

    .line 569
    div-int/lit8 v7, v7, 0x64

    mul-int v6, v0, v16

    mul-int v13, v1, v14

    add-int/2addr v6, v13

    .line 570
    div-int/lit16 v6, v6, 0x100

    mul-int v16, v16, v1

    mul-int v14, v14, v0

    sub-int v13, v16, v14

    .line 571
    div-int/lit16 v13, v13, 0x100

    mul-int/lit8 v14, v6, -0x33

    mul-int/lit8 v15, v13, 0x13

    sub-int/2addr v14, v15

    .line 572
    div-int/lit8 v14, v14, 0x64

    add-int/2addr v6, v7

    if-gez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    if-le v6, v12, :cond_2

    const/16 v6, 0xff

    :cond_2
    :goto_2
    add-int/2addr v14, v7

    if-gez v14, :cond_3

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    if-le v14, v12, :cond_4

    const/16 v14, 0xff

    :cond_4
    :goto_3
    add-int/2addr v7, v13

    if-gez v7, :cond_5

    const/4 v12, 0x0

    goto :goto_4

    :cond_5
    if-le v7, v12, :cond_6

    goto :goto_4

    :cond_6
    move v12, v7

    :goto_4
    const/high16 v7, -0x1000000

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v14, 0x8

    or-int/2addr v6, v7

    or-int/2addr v6, v12

    .line 579
    aput v6, v11, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    :cond_8
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v9, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    .line 583
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v1, p0

    .line 585
    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WatermarkEffect(Ljava/lang/String;Ljava/lang/String;IIZIII)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a watermark effect to an image and change the positon/size or color of the text. For example: text = hello; textSize = 25; textColor = red(rgb value); textAlphaValue = 255 (255= 100% visible,127.5= 50% visible, 0= 0% visible); pointX = 50; pointY = 100; text underline(boolean) = true or false."
    .end annotation

    .line 523
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 526
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 527
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 528
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 530
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 531
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 533
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 534
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float p3, p3

    .line 536
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p3, 0x1

    .line 537
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 538
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    int-to-float p3, p7

    int-to-float p4, p8

    .line 539
    invoke-virtual {v1, p2, p3, p4, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLandscape(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true if image is in landscape format, else return false."
    .end annotation

    .line 923
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 924
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPortrait(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true if image is in portrait format, else return false."
    .end annotation

    .line 929
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 930
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSquare(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true if image is in square format (means as high as wide or as wide as high), else return false."
    .end annotation

    .line 935
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 936
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
