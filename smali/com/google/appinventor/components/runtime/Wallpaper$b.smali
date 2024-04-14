.class final Lcom/google/appinventor/components/runtime/Wallpaper$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Wallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Wallpaper;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Wallpaper;Z)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Wallpaper$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Wallpaper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 114
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/Wallpaper$b;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Z

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "false"

    const-string v1, "Wallpaper"

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Wallpaper$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Wallpaper;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Wallpaper;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 122
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Wallpaper$b;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Z

    if-eqz v2, :cond_1

    .line 123
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 124
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Wallpaper$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Wallpaper;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Wallpaper;)Landroid/app/WallpaperManager;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v2, p1, v4, v3, v5}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    goto :goto_0

    :cond_0
    return-object v0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Wallpaper$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Wallpaper;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Wallpaper;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const-string p1, "Wallpaper changed successful"

    .line 131
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "true"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Wallpaper$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 109
    check-cast p1, Ljava/lang/String;

    const-string v0, "true"

    .line 1141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Wallpaper$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Wallpaper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Wallpaper;->WallpaperChanged(Z)V

    return-void

    .line 1144
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Wallpaper$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Wallpaper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Wallpaper;->WallpaperChanged(Z)V

    return-void
.end method
