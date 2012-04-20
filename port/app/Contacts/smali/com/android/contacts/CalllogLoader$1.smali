.class Lcom/android/contacts/CalllogLoader$1;
.super Landroid/database/ContentObserver;
.source "CalllogLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CalllogLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/CalllogLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/CalllogLoader;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/contacts/CalllogLoader$1;->this$0:Lcom/android/contacts/CalllogLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/CalllogLoader$1;->this$0:Lcom/android/contacts/CalllogLoader;

    invoke-virtual {v0}, Lcom/android/contacts/CalllogLoader;->forceLoad()V

    .line 75
    return-void
.end method
