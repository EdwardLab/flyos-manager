.class final Lcom/google/appinventor/components/runtime/GalleryViewer$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GalleryViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

.field private PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:I

.field hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GalleryViewer;Landroid/content/Context;)V
    .locals 2

    .line 175
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[Ljava/lang/String;

    const/16 v0, 0x64

    .line 171
    iput v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    .line 172
    iput v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    .line 176
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    .line 177
    iget-object p2, p1, Lcom/google/appinventor/components/runtime/GalleryViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/GalleryViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageGallery_android_galleryItemBackground"

    const-string v1, "styleable"

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:I

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GalleryViewer$a;)I
    .locals 0

    .line 1192
    iget p0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GalleryViewer$a;I)V
    .locals 0

    .line 1188
    iput p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer$a;)I
    .locals 0

    .line 1185
    iget p0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer$a;I)V
    .locals 0

    .line 1181
    iput p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 216
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 219
    :try_start_0
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    iget-object p3, p3, Lcom/google/appinventor/components/runtime/GalleryViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p3, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    new-instance p1, Landroid/widget/Gallery$LayoutParams;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer;)Landroid/content/Context;

    move-result-object p3

    iget v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    invoke-static {p3, v0}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    .line 221
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p1, p3, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 220
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 223
    iget p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p2
.end method
