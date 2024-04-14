.class public final Lcom/google/appinventor/components/runtime/Surface;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    helpUrl = "https://docs.kodular.io/components/layout/surface-view/"
    iconName = "images/surface.png"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.CAMERA",
        "android.permission.FLASHLIGHT"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private cameraID:I

.field private clickable:Z

.field private context:Landroid/content/Context;

.field private faceDetect:Z

.field private havePermission:Z

.field private horizontalAlignment:I

.field private isPause:Z

.field private isPlaying:Z

.field private isStop:Z

.field private final mainLayout:Landroid/view/ViewGroup;

.field private myCamera:Landroid/hardware/Camera;

.field private pm:Landroid/content/pm/PackageManager;

.field private sHolder:Landroid/view/SurfaceHolder;

.field private saveAsFile:Z

.field private surfaceView:Landroid/view/SurfaceView;

.field private useBackCamera:Z

.field private useFlashlight:Z

.field private verticalAlignment:I

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 95
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->androidUIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->clickable:Z

    .line 78
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->faceDetect:Z

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Surface;->useBackCamera:Z

    .line 80
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->useFlashlight:Z

    .line 81
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->saveAsFile:Z

    .line 82
    iput v0, p0, Lcom/google/appinventor/components/runtime/Surface;->cameraID:I

    .line 84
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    .line 85
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    .line 86
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z

    .line 88
    iput v1, p0, Lcom/google/appinventor/components/runtime/Surface;->verticalAlignment:I

    .line 89
    iput v1, p0, Lcom/google/appinventor/components/runtime/Surface;->horizontalAlignment:I

    .line 92
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->havePermission:Z

    .line 96
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->activity:Landroid/app/Activity;

    .line 97
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    .line 99
    new-instance v2, Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    .line 100
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->sHolder:Landroid/view/SurfaceHolder;

    .line 101
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 102
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->pm:Landroid/content/pm/PackageManager;

    .line 104
    new-instance v2, Lcom/google/appinventor/components/runtime/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    const/16 v4, 0x64

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 106
    invoke-direct {v2, v3, v1, v5, v5}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 108
    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 110
    new-instance v3, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v3, v2}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Surface;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 111
    iget v5, p0, Lcom/google/appinventor/components/runtime/Surface;->horizontalAlignment:I

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 112
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Surface;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget v5, p0, Lcom/google/appinventor/components/runtime/Surface;->verticalAlignment:I

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 114
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Surface;->mainLayout:Landroid/view/ViewGroup;

    .line 115
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 121
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Surface;->Clickable(Z)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Surface;->FaceDetection(Z)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Surface;->SavePreviewAsFile(Z)V

    .line 126
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Surface;->UseBackCamera(Z)V

    const-string p1, "Surface"

    const-string v0, "Surface Created"

    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private DestroySurface()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 478
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 479
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 480
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 481
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/Surface;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Surface;->havePermission:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Surface;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Surface;->loadTakePicture()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Surface;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Surface;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Surface;->loadStartPreview()V

    return-void
.end method

.method private loadStartPreview()V
    .locals 6

    .line 407
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    const/4 v1, 0x1

    const-string v2, "continuous-picture"

    const-string v3, "Surface"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 410
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Surface;->previewHelper()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 414
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    .line 415
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    .line 416
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 420
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    .line 418
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Surface;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "StartPreview"

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void

    .line 423
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Surface;->cameraID:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    .line 424
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Surface;->previewHelper()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 426
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v2

    .line 430
    :try_start_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 433
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Surface;->sHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 434
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 436
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 439
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    .line 440
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    .line 441
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z

    .line 442
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->faceDetect:Z

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 444
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    :cond_1
    return-void
.end method

.method private loadTakePicture()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lcom/google/appinventor/components/runtime/Surface$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Surface$4;-><init>(Lcom/google/appinventor/components/runtime/Surface;)V

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 332
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Surface"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public final $context()Landroid/app/Activity;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public final AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the arrangement are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .line 599
    iget v0, p0, Lcom/google/appinventor/components/runtime/Surface;->horizontalAlignment:I

    return v0
.end method

.method public final AlignHorizontal(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 585
    iput p1, p0, Lcom/google/appinventor/components/runtime/Surface;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 587
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x579

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 588
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "HorizontalAlignment"

    .line 587
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public final AlignVertical(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 610
    iput p1, p0, Lcom/google/appinventor/components/runtime/Surface;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 612
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x57a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 613
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "VerticalAlignment"

    .line 612
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public final Clickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the surface view component clickable or not clickable."
    .end annotation

    .line 497
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Surface;->clickable:Z

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 500
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Surface$6;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Surface$6;-><init>(Lcom/google/appinventor/components/runtime/Surface;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Surface$7;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Surface$7;-><init>(Lcom/google/appinventor/components/runtime/Surface;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 514
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 516
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setClickable(Z)V

    return-void
.end method

.method public final Clicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect clicks on the camera preview."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Clicked"

    .line 522
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final FaceDetected(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that there are faces in the front of the camera."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FaceDetected"

    .line 559
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final FaceDetection(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you can detect how many faces are in the front of the camera."
    .end annotation

    .line 356
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Surface;->faceDetect:Z

    return-void
.end method

.method public final FaceDetection()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns Face Detection property status."
    .end annotation

    .line 564
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->faceDetect:Z

    return v0
.end method

.method public final Flashlight(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Turn on or off the device flashlight. The function knows automatic if there is a flash/ torch available."
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "Surface"

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "torch"

    .line 364
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 366
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "off"

    .line 370
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 372
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Surface;->useFlashlight:Z

    .line 376
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public final Flashlight()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns Flashlight property status."
    .end annotation

    .line 569
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->useFlashlight:Z

    return v0
.end method

.method public final GotPreview(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to get the response from the camera preview as image file. The picture is by default in landscape mode. This event will only work if the option \"Save Preview As File\" is enabled/ true."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotPreview"

    .line 541
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 211
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public final LongClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect long clicks on the camera preview."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClicked"

    .line 527
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final PausePreview()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause the camera preview."
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    const/4 v1, 0x1

    .line 454
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    .line 455
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z

    .line 456
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Surface;->PreviewPaused()V

    :cond_0
    return-void
.end method

.method public final PictureCreated(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has taken a picture from the preview."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PictureCreated"

    .line 533
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final PreviewPaused()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user paused the camera preview."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PreviewPaused"

    .line 547
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final PreviewStoped()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user stopped the camera preview."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PreviewStoped"

    .line 553
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final SavePreviewAsFile(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable this block to enable the \"Got Preview\" event to get a image file from the camera preview."
    .end annotation

    .line 490
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Surface;->saveAsFile:Z

    return-void
.end method

.method public final StartPreview()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the camera preview."
    .end annotation

    .line 381
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->havePermission:Z

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Surface;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Surface$5;

    invoke-direct {v1, p0, p0}, Lcom/google/appinventor/components/runtime/Surface$5;-><init>(Lcom/google/appinventor/components/runtime/Surface;Lcom/google/appinventor/components/runtime/Surface;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Surface;->loadStartPreview()V

    return-void
.end method

.method public final StopPreview()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the camera preview."
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 465
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 466
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 467
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    .line 469
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z

    .line 471
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Surface;->PreviewStoped()V

    :cond_0
    return-void
.end method

.method public final TakePicture()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take a picture from the camera preview."
    .end annotation

    .line 274
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->havePermission:Z

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Surface;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Surface$3;

    invoke-direct {v1, p0, p0}, Lcom/google/appinventor/components/runtime/Surface$3;-><init>(Lcom/google/appinventor/components/runtime/Surface;Lcom/google/appinventor/components/runtime/Surface;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Surface;->loadTakePicture()V

    return-void
.end method

.method public final UseBackCamera(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will open the back camera for the camera preview, else you open the front camera. The block detect automatic if there is a device camera available or not."
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->pm:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.camera"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 342
    iput v0, p0, Lcom/google/appinventor/components/runtime/Surface;->cameraID:I

    .line 343
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Surface;->useBackCamera:Z

    return-void

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->pm:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.camera.front"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 347
    iput v1, p0, Lcom/google/appinventor/components/runtime/Surface;->cameraID:I

    .line 348
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->useBackCamera:Z

    :cond_1
    return-void
.end method

.method public final UseBackCamera()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns Use Back Camera property status."
    .end annotation

    .line 574
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->useBackCamera:Z

    return v0
.end method

.method public final Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 202
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->mainLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 621
    :try_start_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Surface;->DestroySurface()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 623
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Surface"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1

    .line 268
    array-length p2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/Surface;->FaceDetected(Ljava/lang/String;)V

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Faces Detected = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Surface"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9

    const-string p2, "Surface"

    .line 242
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Surface;->saveAsFile:Z

    if-eqz v0, :cond_1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 252
    new-instance v8, Landroid/graphics/YuvImage;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 254
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/preMak.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 256
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v8, v1, v2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Surface;->GotPreview(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, ""

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Surface;->GotPreview(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 261
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final previewHelper()I
    .locals 5

    .line 630
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 631
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x5a

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 636
    :goto_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 640
    :goto_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/16 v2, 0x10e

    .line 644
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/16 v2, 0xb4

    :cond_3
    return v2
.end method

.method public final setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Surface;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Surface$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Surface$2;-><init>(Lcom/google/appinventor/components/runtime/Surface;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 188
    div-int/lit8 p2, v0, 0x64

    .line 190
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 191
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public final setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Surface;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    return-void
.end method

.method public final setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Surface;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Surface$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Surface$1;-><init>(Lcom/google/appinventor/components/runtime/Surface;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 p3, -0x3e8

    if-gt p2, p3, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 168
    div-int/lit8 p2, v0, 0x64

    .line 170
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 171
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 217
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Surface;->StartPreview()V

    :cond_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Surface;->sHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Surface"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
