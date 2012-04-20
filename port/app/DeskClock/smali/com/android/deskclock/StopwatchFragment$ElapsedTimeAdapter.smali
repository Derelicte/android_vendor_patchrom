.class Lcom/android/deskclock/StopwatchFragment$ElapsedTimeAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElapsedTimeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/StopwatchFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/StopwatchFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeAdapter;->this$0:Lcom/android/deskclock/StopwatchFragment;

    .line 127
    const v0, 0x7f040010

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 128
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;

    .line 133
    .local v2, item:Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 134
    .local v0, elapsedTime:J
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 135
    .local v3, lap:J
    iget-object v5, v2, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;->index:Landroid/widget/TextView;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, v2, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;->elapsedTime:Landroid/widget/TextView;

    #calls: Lcom/android/deskclock/StopwatchFragment;->formatElapsedTime(J)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/deskclock/StopwatchFragment;->access$000(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, v2, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;->lapElapsedTime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0001

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    #calls: Lcom/android/deskclock/StopwatchFragment;->formatElapsedTime(J)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/deskclock/StopwatchFragment;->access$000(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;

    invoke-direct {v1, v0}, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    return-object v0
.end method
