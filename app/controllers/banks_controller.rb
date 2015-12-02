class BanksController < InheritedResources::Base

  private

    def bank_params
      params.require(:bank).permit(:bankName, :bankNumber)
    end
end

