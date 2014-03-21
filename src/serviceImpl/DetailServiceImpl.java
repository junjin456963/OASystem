package serviceImpl;

import java.util.List;

import daoInterface.DetailDaoInterface;
import entity.Detail;
import serviceInterface.DetailServiceInterface;

public class DetailServiceImpl implements DetailServiceInterface {

	private DetailDaoInterface ddi;
	
	public DetailDaoInterface getDdi() {
		return ddi;
	}

	public void setDdi(DetailDaoInterface ddi) {
		this.ddi = ddi;
	}

	public void AddDetail(Detail d) {
		ddi.AddDetail(d);
	}

	public boolean DeleteDetail(Detail d) {
		return ddi.DeleteDetail(d);
	}

	public List<Detail> FindAllDetail() {
		return ddi.FindAllDetail();
	}

	public Detail FindByIdDetail(Detail d) {
		return ddi.FindByIdDetail(d);
	}

	public List<Detail> FindByClaIdDetail(Detail d) {
		// TODO Auto-generated method stub
		return ddi.FindByClaIdDetail(d);
	}

}
