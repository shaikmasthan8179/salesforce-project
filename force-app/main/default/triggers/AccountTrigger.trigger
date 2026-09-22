trigger AccountTrigger on Account (
    before insert,
    before update
) {

    if(Trigger.isBefore){

        if(Trigger.isInsert || Trigger.isUpdate){

            AccountService.updateCustomerStatus(
                Trigger.New
            );
        }
    }
}