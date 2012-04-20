.class final Lcom/android/fileexplorer/IntentBuilder$1;
.super Ljava/lang/Object;
.source "IntentBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/IntentBuilder;->viewFile(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/fileexplorer/IntentBuilder$1;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/IntentBuilder$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    const-string v1, "*/*"

    .line 43
    .local v1, selectType:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 57
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/fileexplorer/IntentBuilder$1;->val$filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/android/fileexplorer/IntentBuilder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void

    .line 45
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v1, "text/plain"

    .line 46
    goto :goto_0

    .line 48
    :pswitch_1
    const-string v1, "audio/*"

    .line 49
    goto :goto_0

    .line 51
    :pswitch_2
    const-string v1, "video/*"

    .line 52
    goto :goto_0

    .line 54
    :pswitch_3
    const-string v1, "image/*"

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
