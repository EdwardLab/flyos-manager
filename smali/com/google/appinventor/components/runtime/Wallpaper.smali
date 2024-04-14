.class public Lcom/google/appinventor/components/runtime/Wallpaper;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/wallpaper.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.WRITE_SETTINGS",
        "android.permission.SET_WALLPAPER",
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Wallpaper$a;,
        Lcom/google/appinventor/components/runtime/Wallpaper$b;
    }
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

.field private sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "wallpaperPicture.png"

    .line 59
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->context:Landroid/content/Context;

    .line 67
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 68
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    const-string p1, "Wallpaper"

    const-string v0, "Wallpaper Created"

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Wallpaper;)Landroid/app/WallpaperManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Wallpaper;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Wallpaper$b;

    invoke-direct {v0, p0, p2}, Lcom/google/appinventor/components/runtime/Wallpaper$b;-><init>(Lcom/google/appinventor/components/runtime/Wallpaper;Z)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/Wallpaper$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Wallpaper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove any currently set system wallpaper, reverting to the system\'s built-in wallpaper."
    .end annotation

    const-string v0, "Wallpaper"

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->clear()V

    .line 77
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Wallpaper;->WallpaperCleared()V

    const-string v1, "Wallpaper cleared"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 80
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ClearWallpaper()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset all wallpaper to the factory default. This block works only on devices with Android 9+."
    .end annotation

    const-string v0, "Wallpaper"

    .line 184
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->clearWallpaper()V

    .line 186
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Wallpaper;->WallpaperCleared()V

    const-string v1, "Wallpaper cleared"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 190
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public DesiredMinimumHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the desired minimum height for the wallpaper."
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public DesiredMinimumWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the desired minimum width for the wallpaper."
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public GetWallpaper()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieve the current system wallpaper; if no wallpaper is set, the system built-in static wallpaper is returned."
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Wallpaper$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Wallpaper$1;-><init>(Lcom/google/appinventor/components/runtime/Wallpaper;)V

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method public GotWallpaper(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the component got the current system wallpaper."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotWallpaper"

    .line 210
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsSetWallpaperAllowed()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the calling package is allowed to set the wallpaper for the calling user. This block works only on devices with Android 7+."
    .end annotation

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsWallpaperSupported()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether wallpapers are supported for the calling user. This block works only on devices with Android 6+."
    .end annotation

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public SaveUtil(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 5

    const-string v0, "Wallpaper"

    const/4 v1, 0x0

    .line 241
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 242
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 243
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 244
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 247
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 248
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 249
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 262
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

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    .line 255
    :goto_1
    :try_start_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 259
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_4

    :catch_5
    move-exception p1

    .line 253
    :goto_2
    :try_start_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    .line 259
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_4

    :catch_6
    move-exception p1

    .line 251
    :goto_3
    :try_start_7
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "GetWallpaper"

    invoke-virtual {v2, p0, v3, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_0

    .line 259
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_4

    :catch_7
    move-exception p1

    .line 262
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_4
    const-string p1, "ERROR"

    return-object p1

    :goto_5
    if-eqz v1, :cond_1

    .line 259
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_6

    :catch_8
    move-exception v1

    .line 262
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    :goto_6
    throw p1
.end method

.method public SaveWallpaperAs(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "wallpaperPicture.png"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "After the user clicked on \"Get Wallpaper\" this will be the name for the wallpaper picture."
    .end annotation

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "wallpaperPicture.png"

    .line 233
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;

    .line 235
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Wallpaper save name is: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Wallpaper;->sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Wallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SetLockScreenWallpaper(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the current lock screen wallpaper. This block works only on devices with Android 7+."
    .end annotation

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)V

    return-void
.end method

.method public SetWallpaper(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the current system wallpaper."
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Wallpaper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)V

    return-void
.end method

.method public WallpaperChanged(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has changed the wallpaper. This event will be invoked by the \"Set Wallpaper\" function."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 151
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "WallpaperChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WallpaperCleared()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has cleared/deleted the wallpaper."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WallpaperCleared"

    .line 86
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
