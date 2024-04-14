.class public Lcom/google/appinventor/components/runtime/GridView$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

.field private PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

.field private qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

.field private sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

.field private textColor:I

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;)V
    .locals 2

    .line 344
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

    const v0, 0x1090003

    .line 345
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 335
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[Ljava/lang/String;

    const/16 v0, 0x96

    .line 336
    iput v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    .line 337
    iput v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    const/4 v0, 0x2

    .line 338
    iput v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    const/high16 v0, 0x41600000    # 14.0f

    .line 340
    iput v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

    const/high16 v0, -0x1000000

    .line 341
    iput v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->textColor:I

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

    .line 346
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    .line 348
    iget-object p2, p1, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageGallery_android_galleryItemBackground"

    const-string v1, "styleable"

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;B)V
    .locals 0

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;)I
    .locals 0

    .line 1364
    iget p0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;I)V
    .locals 0

    .line 1360
    iput p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;)I
    .locals 0

    .line 1356
    iget p0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;I)V
    .locals 0

    .line 1352
    iput p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getElements()[Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 427
    iget v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPadding()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    return v0
.end method

.method public getTextColor()F
    .locals 1

    .line 435
    iget v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->textColor:I

    int-to-float v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 384
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 385
    new-instance p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 387
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 394
    :goto_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

    mul-int v1, v1, v2

    if-eqz v0, :cond_2

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

    mul-int v0, v0, v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    mul-int v3, v3, v2

    invoke-direct {p1, v0, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 401
    iget p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 402
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-object p2

    .line 406
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 408
    iget p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->textColor:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget p2, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    iget v0, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    invoke-direct {p1, p2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 411
    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 416
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method public setElements([Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[Ljava/lang/String;

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    .line 423
    iput p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 443
    iput p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->textColor:I

    return-void
.end method
