.class Lcom/android/email/MessagingController$5;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->searchMailboxImpl(JLcom/android/emailcommon/service/SearchParams;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/email/MessagingController$SortableMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/email/MessagingController$5;->this$0:Lcom/android/email/MessagingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/email/MessagingController$SortableMessage;Lcom/android/email/MessagingController$SortableMessage;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 650
    #getter for: Lcom/android/email/MessagingController$SortableMessage;->mUid:J
    invoke-static {p1}, Lcom/android/email/MessagingController$SortableMessage;->access$600(Lcom/android/email/MessagingController$SortableMessage;)J

    move-result-wide v0

    #getter for: Lcom/android/email/MessagingController$SortableMessage;->mUid:J
    invoke-static {p2}, Lcom/android/email/MessagingController$SortableMessage;->access$600(Lcom/android/email/MessagingController$SortableMessage;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    #getter for: Lcom/android/email/MessagingController$SortableMessage;->mUid:J
    invoke-static {p1}, Lcom/android/email/MessagingController$SortableMessage;->access$600(Lcom/android/email/MessagingController$SortableMessage;)J

    move-result-wide v0

    #getter for: Lcom/android/email/MessagingController$SortableMessage;->mUid:J
    invoke-static {p2}, Lcom/android/email/MessagingController$SortableMessage;->access$600(Lcom/android/email/MessagingController$SortableMessage;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 647
    check-cast p1, Lcom/android/email/MessagingController$SortableMessage;

    .end local p1
    check-cast p2, Lcom/android/email/MessagingController$SortableMessage;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/MessagingController$5;->compare(Lcom/android/email/MessagingController$SortableMessage;Lcom/android/email/MessagingController$SortableMessage;)I

    move-result v0

    return v0
.end method
