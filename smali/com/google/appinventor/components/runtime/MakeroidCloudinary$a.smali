.class final Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidCloudinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;B)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)[Ljava/lang/String;
    .locals 40

    move-object/from16 v1, p0

    const-string v0, "file://"

    const-string v2, "Cloudinary"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 130
    :try_start_0
    aget-object v6, p1, v5

    .line 131
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, ""

    if-eqz v7, :cond_0

    .line 132
    :try_start_1
    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const/16 v0, 0x2e

    .line 134
    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/2addr v0, v4

    .line 135
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v8

    .line 136
    :goto_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v6, Lcom/cloudinary/Cloudinary;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "cloud_name"

    aput-object v10, v9, v5

    iget-object v10, v1, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    .line 139
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "api_key"

    aput-object v10, v9, v3

    const/4 v10, 0x3

    iget-object v11, v1, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    .line 140
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "api_secret"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, v1, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    .line 141
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 138
    invoke-static {v9}, Lcom/cloudinary/utils/ObjectUtils;->asMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/cloudinary/Cloudinary;-><init>(Ljava/util/Map;)V

    const-string v10, "ai"

    const-string v11, "gif"

    const-string v12, "webp"

    const-string v13, "bmp"

    const-string v14, "djvu"

    const-string v15, "ps"

    const-string v16, "ept"

    const-string v17, "eps"

    const-string v18, "eps3"

    const-string v19, "flif"

    const-string v20, "heif"

    const-string v21, "heic"

    const-string v22, "ico"

    const-string v23, "jpg"

    const-string v24, "jpe"

    const-string v25, "jpeg"

    const-string v26, "jpc"

    const-string v27, "jp2"

    const-string v28, "j2k"

    const-string v29, "wdp"

    const-string v30, "jxr"

    const-string v31, "hdp"

    const-string v32, "png"

    const-string v33, "psd"

    const-string v34, "arw"

    const-string v35, "cr2"

    const-string v36, "svg"

    const-string v37, "tga"

    const-string v38, "tif"

    const-string v39, "tiff"

    .line 145
    filled-new-array/range {v10 .. v39}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "mp4"

    const-string v11, "webm"

    const-string v12, "flv"

    const-string v13, "mov"

    const-string v14, "ogv"

    const-string v15, "3gp"

    const-string v16, "3g2"

    const-string v17, "wmv"

    const-string v18, "mpeg"

    const-string v19, "flv"

    const-string v20, "mkv"

    const-string v21, "avi"

    const-string v22, "mp3"

    const-string v23, "wav"

    const-string v24, "aac"

    const-string v25, "ogg"

    const-string v26, "wma"

    const-string v27, "flac"

    .line 148
    filled-new-array/range {v10 .. v27}, [Ljava/lang/String;

    move-result-object v10

    .line 152
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v11, "resource_type"

    if-eqz v9, :cond_2

    :try_start_2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v11, v0, v5

    const-string v9, "image"

    aput-object v9, v0, v4

    .line 153
    invoke-static {v0}, Lcom/cloudinary/utils/ObjectUtils;->asMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_2
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v11, v0, v5

    const-string v9, "video"

    aput-object v9, v0, v4

    .line 155
    invoke-static {v0}, Lcom/cloudinary/utils/ObjectUtils;->asMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v11, v0, v5

    const-string v9, "raw"

    aput-object v9, v0, v4

    .line 157
    invoke-static {v0}, Lcom/cloudinary/utils/ObjectUtils;->asMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lcom/cloudinary/Cloudinary;->uploader()Lcom/cloudinary/Uploader;

    move-result-object v6

    invoke-virtual {v6, v7, v0}, Lcom/cloudinary/Uploader;->upload(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secure_url"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "sucessful"

    new-array v7, v3, [Ljava/lang/String;

    aput-object v6, v7, v5

    aput-object v0, v7, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v7

    :catch_0
    move-exception v0

    .line 165
    :try_start_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/String;

    aput-object v0, v6, v5

    aput-object v8, v6, v4
    :try_end_4
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v6

    :catch_1
    move-exception v0

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EXCEPTION_2"

    .line 178
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    const-string v6, "UploadMedia on cloudinary file exception."

    .line 174
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "EXCEPTION_1"

    aput-object v3, v2, v5

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    return-object v2

    :catch_3
    move-exception v0

    .line 171
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "EXCEPTION_0"

    aput-object v3, v2, v5

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    return-object v2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 125
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1183
    aget-object v1, p1, v0

    const-string v2, "EXCEPTION_0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "UploadMedia"

    if-eqz v1, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, v3, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1185
    :cond_0
    aget-object v1, p1, v0

    const-string v4, "EXCEPTION_1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1186
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v3, p1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1187
    :cond_1
    aget-object v1, p1, v0

    const-string v4, "EXCEPTION_2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1188
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    const/16 v2, 0x450

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1190
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    aget-object v0, p1, v0

    aget-object p1, p1, v2

    invoke-virtual {v1, v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->MediaUploaded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
