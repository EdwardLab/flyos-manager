.class public Lcom/google/appinventor/components/runtime/KodularChatView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    iconName = "images/chatView.png"
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "glide.jar",
        "circleimageview.aar",
        "circleimageview.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Kodular Chat View"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private automaticScrollDown:Z

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private chatView:Landroid/widget/ScrollView;

.field private chatViewLinearLayout:Landroid/widget/LinearLayout;

.field private clickable:Z

.field private context:Landroid/content/Context;

.field private countDateTimestamp:I

.field private countMessages:I

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private doubleTap:Z

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private imagePath:Ljava/lang/String;

.field private isCompanion:Z

.field private lastId:I

.field private linearLayout:Landroid/widget/LinearLayout;

.field private messageFontSize:F

.field private messagesCornerRadius:F

.field private receiversBackgroundColor:I

.field private receiversMessageColor:I

.field private receiversTitleColor:I

.field private receiversTypefaceMessage:I

.field private receiversTypefaceMessageCustom:Ljava/lang/String;

.field private receiversTypefaceTitle:I

.field private receiversTypefaceTitleCustom:Ljava/lang/String;

.field private scrollbar:Z

.field private sendersBackgroundColor:I

.field private sendersMessageColor:I

.field private sendersTitleColor:I

.field private sendersTypefaceMessage:I

.field private sendersTypefaceMessageCustom:Ljava/lang/String;

.field private sendersTypefaceTitle:I

.field private sendersTypefaceTitleCustom:Ljava/lang/String;

.field private size:I

.field private swipeable:Z

.field private timestampCornerRadius:F

.field private timestampTextColor:I

.field private timestapeFontSize:F

.field private titleFontSize:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 95
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollbar:Z

    const/4 v2, 0x0

    .line 70
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    .line 72
    iput v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->lastId:I

    .line 73
    iput v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    .line 74
    iput v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    const/high16 v3, 0x40a00000    # 5.0f

    .line 76
    iput v3, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->messagesCornerRadius:F

    .line 77
    iput v3, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampCornerRadius:F

    .line 80
    iput v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitle:I

    .line 81
    iput v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessage:I

    .line 82
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitleCustom:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessageCustom:Ljava/lang/String;

    .line 85
    iput v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitle:I

    .line 86
    iput v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessage:I

    .line 87
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitleCustom:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessageCustom:Ljava/lang/String;

    const/high16 v4, 0x41600000    # 14.0f

    .line 90
    iput v4, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestapeFontSize:F

    .line 91
    iput v4, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->titleFontSize:F

    .line 92
    iput v4, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->messageFontSize:F

    .line 96
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    .line 97
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    .line 99
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 100
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularChatView;->CreateLayout()V

    .line 103
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v5, :cond_0

    .line 105
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    .line 108
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->BackgroundColor(I)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->AutomaticScrollDown(Z)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->Scrollbar(Z)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->Clickable(Z)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->Swipeable(Z)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->DoubleTap(Z)V

    const v1, -0x743db6

    .line 115
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersBackgroundColor(I)V

    const v1, -0x333334

    .line 116
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversBackgroundColor(I)V

    const/high16 v1, -0x1000000

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTitleColor(I)V

    .line 119
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTitleColor(I)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersMessageColor(I)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversMessageColor(I)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->TimestampTextColor(I)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTypefaceTitle(I)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTypefaceMessage(I)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTypefaceTitleImport(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTypefaceMessageImport(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTypefaceTitle(I)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTypefaceMessage(I)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTypefaceTitleImport(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTypefaceMessageImport(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/KodularChatView;->TimestampFontSize(F)V

    .line 137
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/KodularChatView;->TitleFontSize(F)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/KodularChatView;->MessagesFontSize(F)V

    .line 140
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->MessagesCornerRadius(F)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->TimestampCornerRadius(F)V

    .line 143
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x2

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->Width(I)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->Height(I)V

    const-string p1, "Kodular Chat View"

    const-string v0, "Kodular ChatView Created"

    .line 147
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private CreateLayout()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    .line 178
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 180
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/KodularChatView;)Landroid/widget/ScrollView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/KodularChatView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->swipeable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/KodularChatView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->clickable:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/KodularChatView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->doubleTap:Z

    return p0
.end method

.method private addCircleClickListener(Lde/hdodenhof/circleimageview/CircleImageView;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setClickable(Z)V

    .line 323
    new-instance v0, Lcom/google/appinventor/components/runtime/KodularChatView$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/appinventor/components/runtime/KodularChatView$1;-><init>(Lcom/google/appinventor/components/runtime/KodularChatView;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addCircleImage(Ljava/lang/String;I)Lde/hdodenhof/circleimageview/CircleImageView;
    .locals 4

    .line 309
    :try_start_0
    new-instance v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 311
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    invoke-static {v1, v2, v0, v3}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Lde/hdodenhof/circleimageview/CircleImageView;Z)V

    .line 312
    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularChatView;->addCircleClickListener(Lde/hdodenhof/circleimageview/CircleImageView;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 316
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kodular Chat View"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private addClickListener(Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 16

    .line 610
    new-instance v14, Lcom/google/appinventor/components/runtime/KodularChatView$3;

    move-object/from16 v15, p0

    iget-object v2, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v3, p13

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/appinventor/components/runtime/KodularChatView$3;-><init>(Lcom/google/appinventor/components/runtime/KodularChatView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private addDateTimestamp(Ljava/lang/String;III)V
    .locals 5

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Kodular Chat View"

    const-string p2, "Case 1 - Date Timestamp - Date string is empty but needed."

    .line 275
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 278
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 280
    iput p4, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->lastId:I

    .line 281
    iget p4, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    const/4 v1, 0x1

    add-int/2addr p4, v1

    iput p4, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    const-string p4, "timestampLayout"

    .line 282
    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string p4, "timestamp"

    .line 285
    invoke-direct {p0, p4, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    .line 286
    invoke-static {p1, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    const/4 p4, 0x0

    .line 288
    invoke-direct {p0, p4}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 289
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 290
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestapeFontSize:F

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 293
    invoke-direct {p0, p4}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 294
    iget v3, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, p4, v4, p4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 295
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const p4, 0xffffff

    if-ne p3, p4, :cond_1

    const/4 p4, -0x1

    goto :goto_0

    :cond_1
    move p4, p3

    .line 298
    :goto_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampCornerRadius:F

    invoke-direct {p0, v0, p3, p4, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->setShape(Landroid/view/View;IIF)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollDownIfNeeded()V

    return-void
.end method

.method private addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v8, p4

    move/from16 v13, p5

    .line 332
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v12, "Kodular Chat View"

    if-eqz v0, :cond_0

    if-eqz p8, :cond_0

    const-string v0, "Case 1 - Imagepath is empty but needed."

    .line 334
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 336
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p8, :cond_1

    const-string v0, "Case 2 - Message is empty but needed."

    .line 338
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 340
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p8, :cond_2

    const-string v0, "Case 3 - Title, Message and Timestamp are empty but needed."

    .line 342
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_2
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p13, :cond_3

    const-string v0, "Case 4 - File is empty but needed."

    .line 346
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_3
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v0, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setId(I)V

    .line 351
    iput v13, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->lastId:I

    .line 352
    iget v0, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    const-string v0, "addMessageLayout"

    .line 353
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_4

    const-string v0, "title"

    move-object/from16 v7, p2

    .line 363
    invoke-direct {v15, v0, v7}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 364
    invoke-direct {v15, v10}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget v1, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->titleFontSize:F

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    const/4 v3, 0x0

    .line 366
    iget-object v4, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitleCustom:Ljava/lang/String;

    iget-object v5, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitleCustom:Ljava/lang/String;

    iget v6, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitle:I

    iget v2, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitle:I

    move-object/from16 v1, p0

    move/from16 v16, v2

    move/from16 v2, p6

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/KodularChatView;->fontHelper(ZLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v7, v0

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    if-eqz p8, :cond_5

    .line 369
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move-object/from16 v6, p7

    .line 371
    :try_start_0
    invoke-direct {v15, v6}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewImageView(Ljava/lang/String;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load image. Reason: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move-object/from16 v6, p7

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-eqz p13, :cond_6

    .line 377
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move-object/from16 v4, p12

    .line 379
    :try_start_1
    invoke-direct {v15, v4}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewImageView(Ljava/lang/String;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load video image thumbnail. Reason: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move-object/from16 v4, p12

    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-eqz p10, :cond_7

    if-eqz p9, :cond_7

    .line 387
    :try_start_2
    invoke-virtual/range {p9 .. p9}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 388
    :try_start_3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    .line 390
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object v0, v1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 394
    :goto_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "message"

    move-object/from16 v2, p3

    .line 395
    invoke-direct {v15, v1, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 396
    invoke-direct {v15, v10}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget v9, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->messageFontSize:F

    invoke-static {v1, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 398
    iget-object v9, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessageCustom:Ljava/lang/String;

    iget-object v10, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessageCustom:Ljava/lang/String;

    iget v6, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessage:I

    move-object/from16 v18, v7

    iget v7, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessage:I

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v2, p6

    move-object v13, v3

    move-object/from16 v3, v19

    move-object v4, v9

    move-object v9, v5

    move-object v5, v10

    move-object/from16 v10, v18

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/KodularChatView;->fontHelper(ZLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v7, v19

    goto :goto_8

    :cond_8
    move-object v13, v3

    move-object v9, v5

    move-object v10, v7

    const/4 v7, 0x0

    :goto_8
    const v6, 0x800005

    if-eqz v8, :cond_9

    .line 401
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "timestamp"

    .line 402
    invoke-direct {v15, v1, v8}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v5, 0x0

    .line 403
    invoke-direct {v15, v5}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 404
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 405
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget v2, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->timestapeFontSize:F

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    move-object v4, v1

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_9
    const/4 v1, -0x2

    if-nez v9, :cond_b

    if-nez v0, :cond_b

    if-eqz v13, :cond_a

    goto :goto_a

    :cond_a
    const/4 v2, -0x2

    goto :goto_b

    .line 412
    :cond_b
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/KodularChatView;->isScreenOrientationPortrait()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x32

    goto :goto_b

    :cond_c
    const/16 v2, 0x23

    .line 415
    :goto_b
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v2, v1, :cond_d

    const/4 v2, -0x2

    goto :goto_c

    .line 416
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/KodularChatView;->displayWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x64

    mul-int v16, v16, v2

    move/from16 v2, v16

    :goto_c
    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 418
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 419
    iget v1, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-virtual {v3, v1, v2, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_e
    const/high16 v1, 0x3f000000    # 0.5f

    .line 421
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 423
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Send now as sender: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x800003

    if-eqz p6, :cond_f

    .line 425
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 426
    iget v2, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersBackgroundColor:I

    iget v1, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTitleColor:I

    iget v8, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersMessageColor:I

    move/from16 v16, v1

    move-object/from16 v1, p0

    move/from16 v18, v2

    move-object v2, v11

    move-object/from16 v19, v12

    move-object v12, v3

    move-object v3, v10

    move-object v14, v4

    move-object v4, v7

    move-object/from16 p9, v13

    const v13, 0x800003

    const/16 v17, 0x0

    move/from16 v5, v18

    move/from16 v6, v16

    move-object/from16 p10, v7

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/KodularChatView;->messageHelper(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    goto :goto_d

    :cond_f
    move-object v14, v4

    move-object/from16 p10, v7

    move-object/from16 v19, v12

    move-object/from16 p9, v13

    const v13, 0x800003

    const/16 v17, 0x0

    move-object v12, v3

    .line 428
    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 429
    iget v5, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversBackgroundColor:I

    iget v6, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTitleColor:I

    iget v7, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversMessageColor:I

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v10

    move-object/from16 v4, p10

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/KodularChatView;->messageHelper(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    :goto_d
    if-eqz v14, :cond_10

    .line 432
    iget v1, v15, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampTextColor:I

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    :cond_10
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v10, :cond_11

    .line 439
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_11
    if-eqz v9, :cond_12

    .line 442
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_12
    if-eqz v0, :cond_13

    .line 445
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_13
    if-eqz p9, :cond_14

    move-object/from16 v9, p9

    .line 448
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_14
    move-object/from16 v0, p10

    if-eqz v0, :cond_15

    .line 451
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_15
    if-eqz v14, :cond_16

    .line 454
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_16
    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    const/4 v14, 0x0

    move/from16 v10, p8

    move-object v12, v11

    move-object/from16 v11, p11

    move-object/from16 v20, v12

    move-object/from16 v15, v19

    move-object/from16 v12, p12

    const v0, 0x800003

    move/from16 v13, p13

    move-object/from16 v15, p1

    move-object/from16 v14, p1

    .line 458
    invoke-direct/range {v1 .. v14}, Lcom/google/appinventor/components/runtime/KodularChatView;->addClickListener(Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v15, :cond_18

    .line 460
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "The user wants a user image near the message."

    move-object/from16 v2, v19

    .line 461
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 462
    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 464
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 465
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 467
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    const/16 v7, 0x2d

    .line 468
    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    .line 469
    invoke-static {v8, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 470
    iget v6, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    div-int/lit8 v7, v6, 0x2

    invoke-virtual {v5, v6, v7, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    if-eqz p6, :cond_17

    const v6, 0x800005

    .line 473
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 474
    iget v0, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    div-int/lit8 v6, v0, 0x2

    div-int/lit8 v7, v0, 0x2

    invoke-virtual {v3, v0, v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 475
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v6, v20

    .line 476
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v7, p5

    .line 477
    invoke-direct {v1, v15, v7}, Lcom/google/appinventor/components/runtime/KodularChatView;->addCircleImage(Ljava/lang/String;I)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_17
    move/from16 v7, p5

    move-object/from16 v6, v20

    .line 479
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 480
    iget v0, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    div-int/lit8 v8, v0, 0x2

    div-int/lit8 v9, v0, 0x2

    invoke-virtual {v3, v2, v8, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 481
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    invoke-direct {v1, v15, v7}, Lcom/google/appinventor/components/runtime/KodularChatView;->addCircleImage(Ljava/lang/String;I)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    :goto_e
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_f

    :cond_18
    move-object/from16 v1, p0

    move-object/from16 v6, v20

    .line 488
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 490
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollDownIfNeeded()V

    return-void
.end method

.method private displayWidth()I
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 570
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private fontHelper(ZLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 594
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1, p2, p3, v0, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void

    .line 597
    :cond_0
    invoke-static {p2, p5, v0, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    .line 600
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 601
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1, p2, p4, v0, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void

    .line 603
    :cond_2
    invoke-static {p2, p6, v0, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method private getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    if-eqz p1, :cond_0

    .line 521
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1

    .line 525
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1
.end method

.method private getNewImageView(Ljava/lang/String;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 3

    .line 512
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 513
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    invoke-static {v1, p1, v0, v2}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatImageView;Z)V

    const/4 p1, 0x1

    .line 514
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    div-int/lit8 v1, p1, 0x5

    div-int/lit8 v2, p1, 0x5

    invoke-virtual {v0, p1, v1, p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    return-object v0
.end method

.method private getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 504
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 505
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 506
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 507
    iget p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    div-int/lit8 p2, p1, 0x5

    div-int/lit8 v1, p1, 0x5

    invoke-virtual {v0, p1, p2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private getView(I)Landroid/widget/LinearLayout;
    .locals 1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Form;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Chat View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private isScreenOrientationPortrait()Z
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private messageHelper(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;III)V
    .locals 2

    const v0, 0xffffff

    if-ne p4, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p4

    .line 533
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->messagesCornerRadius:F

    invoke-direct {p0, p1, p4, v0, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->setShape(Landroid/view/View;IIF)V

    if-eqz p2, :cond_1

    .line 535
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 538
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private removeMessage(I)V
    .locals 2

    const-string v0, "Kodular Chat View"

    .line 196
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Can not perfom \'remove Message\'. The object is null."

    .line 198
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 201
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "addMessageLayout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    iget p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    return-void

    .line 206
    :cond_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 210
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scrollDown(I)V
    .locals 4

    const-string v0, "Kodular Chat View"

    .line 544
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Can not perfom \'scroll Down\'. The object is null."

    .line 546
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p1

    iget v3, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    invoke-virtual {v1, v2, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 551
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scrollDownIfNeeded()V
    .locals 2

    .line 494
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->automaticScrollDown:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularChatView$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularChatView$2;-><init>(Lcom/google/appinventor/components/runtime/KodularChatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private setShape(Landroid/view/View;IIF)V
    .locals 2

    .line 575
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 576
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 577
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-static {v1, p4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p4

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 578
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p2, 0x2

    .line 579
    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 580
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 581
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 583
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kodular Chat View"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAppearance()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 557
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundColor:I

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 561
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateMessage(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4

    const-string v0, "Kodular Chat View"

    .line 225
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "Can not perfom \'update Message\'. The object is null."

    .line 227
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 230
    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 231
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 232
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 233
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 234
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    check-cast v2, Landroid/widget/TextView;

    .line 236
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    invoke-static {v2, p3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 243
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateUserImage(ILjava/lang/String;)V
    .locals 6

    const-string v0, "Kodular Chat View"

    .line 249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Can not perfom \'update User Image\'. The object is null."

    .line 251
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 260
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 261
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 262
    instance-of v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;

    if-eqz v3, :cond_3

    .line 263
    check-cast v2, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 264
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    if-nez p2, :cond_2

    const-string v4, ""

    goto :goto_1

    :cond_2
    move-object v4, p2

    :goto_1
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    invoke-static {v3, v4, v2, v5}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Lde/hdodenhof/circleimageview/CircleImageView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 268
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AddComponentMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/AndroidViewComponent;IZ)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple component message into the chat view. If you do not want a user image or title or message or timestamp, then let the field empty. Make sure that the component is VISIBLE on the screen when you try to add it here. It will be then removed automatic from the screen and only visible again in the chat view."
    .end annotation

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v9, p5

    .line 705
    invoke-direct/range {v0 .. v13}, Lcom/google/appinventor/components/runtime/KodularChatView;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public AddDateTimestamp(Ljava/lang/String;III)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple date timestamp into the chat view. You NEED to write a date, else this block will do nothing. This means the field \'date\' can NOT be empty. Timestamp messages are not clickable."
    .end annotation

    .line 697
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/KodularChatView;->addDateTimestamp(Ljava/lang/String;III)V

    return-void
.end method

.method public AddFileMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple file message into the chat view. If you do not want a user image or title or message or timestamp, then let the field empty."
    .end annotation

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 689
    invoke-direct/range {v0 .. v13}, Lcom/google/appinventor/components/runtime/KodularChatView;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public AddImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple image message into the chat view. If you do not want a user image or title or message or timestamp, then let the field empty."
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p4

    .line 683
    invoke-direct/range {v0 .. v13}, Lcom/google/appinventor/components/runtime/KodularChatView;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public AddMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple message into the chat view. If you do not want a user image or title or message or timestamp, then let the field empty."
    .end annotation

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 677
    invoke-direct/range {v0 .. v13}, Lcom/google/appinventor/components/runtime/KodularChatView;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public AutomaticScrollDown(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the chat view will scroll down when a new message was send."
    .end annotation

    .line 874
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->automaticScrollDown:Z

    return-void
.end method

.method public AutomaticScrollDown()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 879
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->automaticScrollDown:Z

    return v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the component\'s background color"
    .end annotation

    .line 894
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the component\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 887
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundColor:I

    .line 888
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateAppearance()V

    return-void
.end method

.method public ClearChatView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes all messages and timestamps from the chat view."
    .end annotation

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 766
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    .line 767
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 770
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kodular Chat View"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Click listener event."
    .end annotation

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 928
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const/4 p1, 0x6

    aput-object p7, v0, p1

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v0, p2

    const/16 p1, 0x8

    aput-object p9, v0, p1

    const/16 p1, 0x9

    aput-object p10, v0, p1

    invoke-static {p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0xa

    aput-object p1, v0, p2

    const-string p1, "Click"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Clickable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component clickable or not clickable."
    .end annotation

    .line 951
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->clickable:Z

    return-void
.end method

.method public Clickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 956
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->clickable:Z

    return v0
.end method

.method public CountDateTimestamp()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the number of all date timestamps. Normal messages are not included."
    .end annotation

    .line 671
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    return v0
.end method

.method public CountMessages()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the number of all messages. \'Date Timestamp\' messages are not included."
    .end annotation

    .line 666
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    return v0
.end method

.method public DoubleTap(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component enabled for double taps or not."
    .end annotation

    .line 964
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->doubleTap:Z

    return-void
.end method

.method public DoubleTap()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 969
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->doubleTap:Z

    return v0
.end method

.method public DoubleTapClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Double tap click listener event."
    .end annotation

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 938
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const/4 p1, 0x6

    aput-object p7, v0, p1

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v0, p2

    const/16 p1, 0x8

    aput-object p9, v0, p1

    const/16 p1, 0x9

    aput-object p10, v0, p1

    invoke-static {p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0xa

    aput-object p1, v0, p2

    const-string p1, "DoubleTapClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetLastUsedId()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the last used id."
    .end annotation

    .line 661
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->lastId:I

    return v0
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 172
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the component\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 904
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 905
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 906
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 908
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 910
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Chat View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateAppearance()V

    return-void
.end method

.method public LongClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Long click listener event."
    .end annotation

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 933
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const/4 p1, 0x6

    aput-object p7, v0, p1

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v0, p2

    const/16 p1, 0x8

    aput-object p9, v0, p1

    const/16 p1, 0x9

    aput-object p10, v0, p1

    invoke-static {p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0xa

    aput-object p1, v0, p2

    const-string p1, "LongClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MessagesCornerRadius(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1049
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->messagesCornerRadius:F

    return-void
.end method

.method public MessagesFontSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1080
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->messageFontSize:F

    return-void
.end method

.method public ReceiversBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 819
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversBackgroundColor:I

    return v0
.end method

.method public ReceiversBackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color for receiver\'s messages."
    .end annotation

    .line 814
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversBackgroundColor:I

    return-void
.end method

.method public ReceiversMessageColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 843
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversMessageColor:I

    return v0
.end method

.method public ReceiversMessageColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for receivers\'s messages."
    .end annotation

    .line 838
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversMessageColor:I

    return-void
.end method

.method public ReceiversTitleColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 831
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTitleColor:I

    return v0
.end method

.method public ReceiversTitleColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for receivers\'s title messages."
    .end annotation

    .line 826
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTitleColor:I

    return-void
.end method

.method public ReceiversTypefaceMessage(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1026
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessage:I

    return-void
.end method

.method public ReceiversTypefaceMessageImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    if-eqz p1, :cond_0

    .line 1041
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessageCustom:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public ReceiversTypefaceTitle(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1019
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitle:I

    return-void
.end method

.method public ReceiversTypefaceTitleImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    if-eqz p1, :cond_0

    .line 1033
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitleCustom:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public RemoveMessage(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a message or timestamp from the chat view."
    .end annotation

    .line 758
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->removeMessage(I)V

    return-void
.end method

.method public ScrollTo(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Scroll to a specific message in the chat view with the given id."
    .end annotation

    .line 656
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollDown(I)V

    return-void
.end method

.method public Scrollbar(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to display a scrollbar."
    .end annotation

    .line 861
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollbar:Z

    .line 862
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public Scrollbar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 867
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollbar:Z

    return v0
.end method

.method public SendersBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 783
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersBackgroundColor:I

    return v0
.end method

.method public SendersBackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF8BC24A"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color for sender\'s messages."
    .end annotation

    .line 778
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersBackgroundColor:I

    return-void
.end method

.method public SendersMessageColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 807
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersMessageColor:I

    return v0
.end method

.method public SendersMessageColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for sender\'s messages."
    .end annotation

    .line 802
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersMessageColor:I

    return-void
.end method

.method public SendersTitleColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 795
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTitleColor:I

    return v0
.end method

.method public SendersTitleColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for sender\'s title messages."
    .end annotation

    .line 790
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTitleColor:I

    return-void
.end method

.method public SendersTypefaceMessage(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 996
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessage:I

    return-void
.end method

.method public SendersTypefaceMessageImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    if-eqz p1, :cond_0

    .line 1011
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessageCustom:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public SendersTypefaceTitle(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 989
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitle:I

    return-void
.end method

.method public SendersTypefaceTitleImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    if-eqz p1, :cond_0

    .line 1003
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitleCustom:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public Swipe(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Swipe listener event. The direction value returns \'1\' for right-to-left swipes, \'2\' for left-to-right swipes \'3\' for bottom-to-top swipes and \'4\' for top-to-bottom swipes"
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 945
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const/4 p1, 0x7

    aput-object p8, v0, p1

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0x8

    aput-object p1, v0, p2

    const/16 p1, 0x9

    aput-object p10, v0, p1

    const/16 p1, 0xa

    aput-object p11, v0, p1

    invoke-static {p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0xb

    aput-object p1, v0, p2

    const-string p1, "Swipe"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Swipeable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true you can swipe with your fingers through views."
    .end annotation

    .line 977
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->swipeable:Z

    return-void
.end method

.method public Swipeable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 982
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->swipeable:Z

    return v0
.end method

.method public TimestampCornerRadius(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1056
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampCornerRadius:F

    return-void
.end method

.method public TimestampFontSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1064
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestapeFontSize:F

    return-void
.end method

.method public TimestampTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 855
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampTextColor:I

    return v0
.end method

.method public TimestampTextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for the timestamp."
    .end annotation

    .line 850
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampTextColor:I

    return-void
.end method

.method public TitleFontSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1072
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->titleFontSize:F

    return-void
.end method

.method public UpdateMessageBackgroundColor(II)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the background color of a chat view message."
    .end annotation

    const-string v0, "Kodular Chat View"

    .line 732
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Can not perfom \'Update Message Background Color\'. The object is null."

    .line 734
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 738
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 740
    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 741
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    const/high16 v1, 0x41400000    # 12.0f

    .line 744
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 745
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestampLayout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v1, 0x41200000    # 10.0f

    :cond_2
    const v2, 0xffffff

    if-ne p2, v2, :cond_3

    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    move v2, p2

    .line 750
    :goto_1
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/google/appinventor/components/runtime/KodularChatView;->setShape(Landroid/view/View;IIF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 752
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public UpdateMessageContent(ILjava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the message content of a chat view message."
    .end annotation

    const-string v0, "message"

    .line 715
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateMessage(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public UpdateTimestampContent(ILjava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the timestamp content of a chat view message."
    .end annotation

    const-string v0, "timestamp"

    .line 720
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateMessage(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public UpdateTitleContent(ILjava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the title content of a chat view message."
    .end annotation

    const-string v0, "title"

    .line 710
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateMessage(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public UpdateUserImage(ILjava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the user image of a chat view message. The image can only be updated if there was before a old image."
    .end annotation

    .line 726
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateUserImage(ILjava/lang/String;)V

    return-void
.end method

.method public UserImageClick(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Click listener event for the user image."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 923
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "UserImageClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method
