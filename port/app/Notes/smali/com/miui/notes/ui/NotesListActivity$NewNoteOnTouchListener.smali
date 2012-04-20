.class Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewNoteOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 388
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 430
    :pswitch_0
    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1600(Lcom/miui/notes/ui/NotesListActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I
    invoke-static {v8}, Lcom/miui/notes/ui/NotesListActivity;->access$1500(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 432
    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z
    invoke-static {v7, v6}, Lcom/miui/notes/ui/NotesListActivity;->access$1602(Lcom/miui/notes/ui/NotesListActivity;Z)Z

    .line 433
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 438
    :cond_0
    :goto_0
    return v6

    .line 390
    :pswitch_1
    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {v7}, Lcom/miui/notes/ui/NotesListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 391
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 392
    .local v3, screenHeight:I
    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$800(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Button;->getHeight()I

    move-result v2

    .line 393
    .local v2, newNoteViewHeight:I
    sub-int v4, v3, v2

    .line 394
    .local v4, start:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int v1, v4, v7

    .line 398
    .local v1, eventY:I
    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1200(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    move-result-object v7

    sget-object v8, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v7, v8, :cond_1

    .line 399
    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1300(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    sub-int/2addr v1, v7

    .line 400
    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1300(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    .line 407
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-double v9, v9

    const-wide v11, -0x404147ae147ae148L

    mul-double/2addr v9, v11

    const-wide v11, 0x4057800000000000L

    add-double/2addr v9, v11

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    .line 408
    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 410
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v7, v4, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/lit8 v8, v4, 0x5e

    if-ge v7, v8, :cond_0

    .line 412
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I
    invoke-static {v6, v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1402(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 413
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I
    invoke-static {v6, v1}, Lcom/miui/notes/ui/NotesListActivity;->access$1502(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1500(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 415
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const/4 v7, 0x1

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z
    invoke-static {v6, v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1602(Lcom/miui/notes/ui/NotesListActivity;Z)Z

    .line 416
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 422
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #eventY:I
    .end local v2           #newNoteViewHeight:I
    .end local v3           #screenHeight:I
    .end local v4           #start:I
    .end local v5           #view:Landroid/view/View;
    :pswitch_2
    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1600(Lcom/miui/notes/ui/NotesListActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 423
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I
    invoke-static {v8}, Lcom/miui/notes/ui/NotesListActivity;->access$1400(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1512(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 424
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1500(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 425
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
