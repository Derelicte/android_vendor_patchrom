.class Lcom/miui/backup/ScriptItemFactory;
.super Ljava/lang/Object;
.source "BackupRestoreStrategy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(ILjava/lang/String;Ljava/lang/String;)Lcom/miui/backup/ScriptItem;
    .locals 1
    .parameter "cmd"
    .parameter "opt1"
    .parameter "opt2"

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 683
    .local v0, item:Lcom/miui/backup/ScriptItem;
    packed-switch p0, :pswitch_data_0

    .line 730
    const/4 v0, 0x0

    .line 733
    :goto_0
    return-object v0

    .line 685
    :pswitch_0
    new-instance v0, Lcom/miui/backup/ScriptCpItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptCpItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 688
    :pswitch_1
    new-instance v0, Lcom/miui/backup/ScriptCpDirItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptCpDirItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 691
    :pswitch_2
    new-instance v0, Lcom/miui/backup/ScriptRmItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptRmItem;-><init>(Ljava/lang/String;)V

    .line 692
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 694
    :pswitch_3
    new-instance v0, Lcom/miui/backup/ScriptRmDirItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptRmDirItem;-><init>(Ljava/lang/String;)V

    .line 695
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 697
    :pswitch_4
    new-instance v0, Lcom/miui/backup/ScriptChmodItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChmodItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 700
    :pswitch_5
    new-instance v0, Lcom/miui/backup/ScriptChgrpItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChgrpItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 703
    :pswitch_6
    new-instance v0, Lcom/miui/backup/ScriptChownItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChownItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 706
    :pswitch_7
    new-instance v0, Lcom/miui/backup/ScriptChmodRecurseItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChmodRecurseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 709
    :pswitch_8
    new-instance v0, Lcom/miui/backup/ScriptChgrpRecurseItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChgrpRecurseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 712
    :pswitch_9
    new-instance v0, Lcom/miui/backup/ScriptChownRecurseItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChownRecurseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 715
    :pswitch_a
    new-instance v0, Lcom/miui/backup/ScriptMkdirsItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptMkdirsItem;-><init>(Ljava/lang/String;)V

    .line 716
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 718
    :pswitch_b
    new-instance v0, Lcom/miui/backup/ScriptMvItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptMvItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 721
    :pswitch_c
    new-instance v0, Lcom/miui/backup/ScriptCpDataItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptCpDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 724
    :pswitch_d
    new-instance v0, Lcom/miui/backup/ScriptSetPropItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptSetPropItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 727
    :pswitch_e
    new-instance v0, Lcom/miui/backup/ScriptGetPropItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptGetPropItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
