.class final Lcom/android/email/activity/MessageListFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageListFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvancingOpAccepted(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, affectedMessages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    return-void
.end method

.method public onDragEnded()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onDragStarted()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public onMailboxNotFound(Z)V
    .locals 0
    .parameter "isFirstLoad"

    .prologue
    .line 211
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 0
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 216
    return-void
.end method
