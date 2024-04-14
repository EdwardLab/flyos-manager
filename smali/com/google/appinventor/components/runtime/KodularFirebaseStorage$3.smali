.class final Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/storage/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->UploadFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/storage/OnProgressListener<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:Ljava/lang/String;

.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/io/File;

.field private synthetic XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onProgress(Ljava/lang/Object;)V
    .locals 7

    .line 81
    check-cast p1, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    .line 1084
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getBytesTransferred()J

    move-result-wide v3

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->UploadProgress(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method
