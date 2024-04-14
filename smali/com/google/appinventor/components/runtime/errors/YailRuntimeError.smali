.class public Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.source "SourceFile"


# instance fields
.field private AZ85BVaQs0kLUu2CXyiWDXG9VqpTCCfp4NXnNFkUHgydy0WmV0oqvVulykJ4p0wv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->AZ85BVaQs0kLUu2CXyiWDXG9VqpTCCfp4NXnNFkUHgydy0WmV0oqvVulykJ4p0wv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->AZ85BVaQs0kLUu2CXyiWDXG9VqpTCCfp4NXnNFkUHgydy0WmV0oqvVulykJ4p0wv:Ljava/lang/String;

    return-object v0
.end method
